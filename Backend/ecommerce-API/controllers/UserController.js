const User = require('../models/User');
const Address = require('../models/Address');
const {getLocationIds} = require('../utils/LocationUtils');
const bcrypt = require('bcrypt');
const sequelize = require('../config/database');
const {body,validationResult} = require('express-validator');


//Middlewares to validate user data
const validateUser = [
    body('email')
    .isEmail().withMessage('Invalid email')
    .custom(async (value) => {
        const user = await User.findOne({where: {email: value}});
        if(user){
            return Promise.reject('Email already in use');
        }
    }),
    body('name')
    .isLength({min: 2}).withMessage('Name must have at least 2 characters')
    .isString().withMessage('Name must be a string'),
    body('last_name')
    .isLength({min: 2}).withMessage('Last name must have at least 2 characters')
    .isString().withMessage('Last name must be a string'),
    body('passw')
    .isLength({min: 6}).withMessage('Password must have at least 6 characters')
    .isString().withMessage('Password must be a string'),
    body('role')
    .isIn(['admin', 'user', 'logistics']).withMessage('Invalid role'),
    body('phone')
    .isMobilePhone().withMessage('Invalid phone number'),
    body('province')
    .isString().withMessage('Province must be a string'),
    body('canton')
    .isString().withMessage('Canton must be a string'),
    body('district')
    .isString().withMessage('District must be a string'),
    body('postal_code')
    .isString().withMessage('Postal code must be a string'),
    body('specific_address')
    .isString().withMessage('Specific address must be a string'),

    (req, res, next) => {
        const errors = validationResult(req);
        if(!errors.isEmpty()){
            return res.status(400).json({errors: errors.array()});
        }
        next();
    }
]

const validateUpdateUser = [
    body('email')
    .isEmail().withMessage('Invalid email')
    .custom(async (value, { req }) => {
      const user = await User.findOne({ where: { email: value } });
      if (user && user.id !== parseInt(req.params.id, 10)) {
        return Promise.reject('Email already in use');
      }
    }),
    body('name')
    .isLength({min: 2}).withMessage('Name must have at least 2 characters')
    .isString().withMessage('Name must be a string'),
    body('last_name')
    .isLength({min: 2}).withMessage('Last name must have at least 2 characters')
    .isString().withMessage('Last name must be a string'),
    body('role')
    .isIn(['admin', 'user', 'logistics']).withMessage('Invalid role'),
    body('phone')
    .isMobilePhone().withMessage('Invalid phone number'),

    (req, res, next) => {
        const errors = validationResult(req);
        if(!errors.isEmpty()){
            return res.status(400).json({errors: errors.array()});
        }
        next();
    }
];

const validatePassword = [
    body('new_password')
    .isLength({min: 6}).withMessage('Password must have at least 6 characters')
    .isString().withMessage('Password must be a string'),

    (req, res, next) => {
        const errors = validationResult(req);
        if(!errors.isEmpty()){
            return res.status(400).json({errors: errors.array()});
        }
        next();
    }
]

//POST

async function createUser(req, res) {
    const transaction = await sequelize.transaction();

    const locationIds = await getLocationIds(
        req.body.province, 
        req.body.canton, 
        req.body.district
    );

    try{
        const newAddress = await Address.create({
            id_district: locationIds.id_district,
            postal_code: req.body.postal_code,
            specific_address: req.body.specific_address
        },{transaction});

        const hashedPassword = await bcrypt.hash(req.body.passw, 10);
        const newUser = await User.create({
            email: req.body.email,
            name: req.body.name,
            last_name: req.body.last_name,
            passw: hashedPassword,
            role: req.body.role,
            photo: req.body.photo,
            phone: req.body.phone,
            id_address: newAddress.id
        },{transaction});

        await transaction.commit();

        res.status(201).json(newUser);
    }catch(error){
        await transaction.rollback();
        console.log(error);
        res.status(500).json({error: 'There was an error trying to create the user'});
    }
}


async function getUsers(req, res) {
    try{
        const users = await User.findAll({
           attributes: {exclude: ['passw']},
        });

        res.status(200).json(users);
    }catch(error){
        console.log(error);
        res.status(500).json({error: 'There was an error trying to get the users'});
    }
}

async function getUserByEmail(req, res) {
    try{
        const user = await User.findOne({
            where: {
                email: req.params.email
            },
            attributes: {exclude: ['passw']}
        });

        if(user){
            res.status(200).json(user);
        }else{
            res.status(404).json({error: 'User not found'});
        }
    }catch(error){
        console.log(error);
        res.status(500).json({error: 'There was an error trying to get the user'});
    }
}

async function getUserById(req, res) {
    try{
        const user = await User.findByPk(req.params.id,{
            attributes: {exclude: ['passw']}
        }
          
        );

        if(user){
            res.status(200).json(user);
        }else{
            res.status(404).json({error: 'User not found'});
        }
    }catch(error){
        console.log(error);
        res.status(500).json({error: 'There was an error trying to get the user'});
    }
}

//PUT
// To do: Modify
async function updateUser(req, res) {
    const transaction = await sequelize.transaction();

    try{
        const user = await User.findByPk(req.params.id);

        if(user){
            const updatedUser = await user.update({
                email: req.body.email,
                name: req.body.name,
                last_name: req.body.last_name,
                role: req.body.role,
                photo: req.body.photo,
                phone: req.body.phone,
                passw: user.passw
            }, {transaction});
            await transaction.commit();
            res.status(200).json({
                message: 'User updated successfully',
                user: updatedUser
            });
        }else{
            res.status(404).json({error: 'User not found'});
        }
    }catch(error){
        await transaction.rollback();
        console.log(error);
        res.status(500).json({error: 'There was an error trying to update the user'});
    }
}

//DELETE

async function deleteUser(req, res) {
    const transaction = await sequelize.transaction();

    try {
        const user = await User.findByPk(req.params.id, { transaction });

        if (user) {

            await sequelize.query('CALL DeleteUserCascade(:id)', {
                replacements: { id: req.params.id },
                transaction
            })

            await transaction.commit();
            res.status(200).json({ message: 'User and associated things removed succesfully' });
        } else {
            await transaction.rollback();
            res.status(404).json({ error: 'User not found' });
        }
    } catch (error) {
        await transaction.rollback();
        console.error(error);
        res.status(500).json({ error: 'There was an error trying to delete the user' });
    }
}

const updatePassword = async (req, res) => {
    const transaction = await sequelize.transaction();
    const {current_password,new_password} = req.body;

    try {
        const user = await User.findByPk(req.params.id, { transaction });

        if (user) {
            const isPasswordValid = await bcrypt.compare(current_password, user.passw);

            if (isPasswordValid) {
                const hashedPassword = await bcrypt.hash(new_password, 10);
                await user.update({ passw: hashedPassword }, { transaction });
                await transaction.commit();
                res.status(200).json({ message: 'Password updated successfully' });
            } else {
                await transaction.rollback();
                res.status(400).json({ error: 'Invalid current password' });
            }
        } else {
            await transaction.rollback();
            res.status(404).json({ error: 'User not found' });
        }
    } catch (error) {
        await transaction.rollback();
        console.error(error);
        res.status(500).json({ error: 'There was an error trying to update the password' });
    }
}


module.exports = {
    createUser,
    validateUser,
    validateUpdateUser,
    getUsers,
    getUserByEmail,
    getUserById,
    updateUser,
    deleteUser,
    validatePassword,
    updatePassword

};