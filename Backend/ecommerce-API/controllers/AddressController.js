const Address = require('../models/Address');
const sequelize = require('../config/database');
const {body,validationResult} = require('express-validator');
const District = require('../models/District');
const Canton = require('../models/Canton');
const Province = require('../models/Province');
const { get } = require('../routes/UserRoutes');

//Middleware to validate address data
const validateAddress = [
    body('id_district')
    .isInt().withMessage('Invalid district id'),
    body('postal_code')
    .isString().withMessage('Postal code must be a string'),
    body('specific_address')
    .isString().withMessage('Specific address must be a string'),
    (req, res, next) => {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return res.status(400).json({
                errors: errors.array()
            });
        }
        next();
    }
]

const createAddress = async (req, res) => {

    const {id_district, postal_code, specific_address} = req.body;
    try {
        const address = await Address.create({
            id_district,
            postal_code,
            specific_address
        });
        return res.status(201).json({
            message: 'Address created successfully',
            address
        });
    } catch (error) {
        return res.status(500).json({
            message: 'Error creating address',
            error
        });
    }
}

const getAddresses = async (req, res) => {
    try {
        const addresses = await Address.findAll();
        return res.status(200).json({
            addresses
        });
    } catch (error) {
        return res.status(500).json({
            message: 'Error getting addresses',
            error
        });
    }
}

const getAddressById = async (req, res) => {
    const {id} = req.params;
    try {
        const address = await Address.findOne({
            where: {
                id
            }
        });
        return res.status(200).json(address.get());
    } catch (error) {
        return res.status(500).json({
            message: 'Error getting address',
            error
        });
    }
}


const updateAddress = async (req, res) => {
    const {id} = req.params;
    const {id_district, postal_code, specific_address} = req.body;
    try {
        const address = await Address.findOne({
            where: {
                id
            }
        });
        if (!address) {
            return res.status(404).json({
                message: 'Address not found'
            });
        }
        address.id_district = id_district;
        address.postal_code = postal_code;
        address.specific_address = specific_address;
        await address.save();
        return res.status(200).json({
            message: 'Address updated successfully',
            address
        });
    } catch (error) {
        return res.status(500).json({
            message: 'Error updating address',
            error
        });
    }
}

const deleteAddress = async (req, res) => {
    const {id} = req.params;
    const transaction = await sequelize.transaction();
    try {
        const address = await Address.findOne({
            where: {
                id
            }
        });
        if (!address) {
            return res.status(404).json({
                message: 'Address not found'
            });
        }
        await address.destroy({transaction});
        await transaction.commit();
        return res.status(204).json({
            message: 'Address deleted successfully'
        });
    } catch (error) {
        await transaction.rollback();
        return res.status(500).json({
            message: 'Error deleting address',
            error
        });
    }
}

//Locations

const getDistricts = async (req, res) => {
    try {
        console.log('Getting districts');
        const districts = await District.findAll();
        return res.status(200).json({
            districts
        });
    } catch (error) {
        return res.status(500).json({
            message: 'Error getting districts',
            error
        });
    }
}

// Get District by ID

const getDistrict = async (req, res) => {
    const { id } = req.params; 
    try {
        const district = await District.findOne({
            where: { id } 
        });
        return res.status(200).json(district);

    } catch (error) {
        return res.status(500).json({
            message: 'Error getting district',
            error
        });
    }
};


const getCantons = async (req, res) => {
    try {
        const cantons = await Canton.findAll();
        return res.status(200).json({
            cantons
        });
    } catch (error) {
        return res.status(500).json({
            message: 'Error getting cantons',
            error
        });
    }
}

// Get Canton by ID

const getCanton = async (req, res) => {
    const { id } = req.params; 
    try {
        const canton = await Canton.findOne({
            where: { id } 
        });
        return res.status(200).json(canton);

    } catch (error) {
        return res.status(500).json({
            message: 'Error getting district',
            error
        });
    }
};

const getProvinces = async (req, res) => {
    try {
        const provinces = await Province.findAll();
        return res.status(200).json({
            provinces
        });
    } catch (error) {
        return res.status(500).json({
            message: 'Error getting provinces',
            error
        });
    }
}

// Get Province by ID

const getProvince = async (req, res) => {
    const { id } = req.params; 
    try {
        const province = await Province.findOne({
            where: { id } 
        });
        return res.status(200).json(province);

    } catch (error) {
        return res.status(500).json({
            message: 'Error getting district',
            error
        });
    }
};

//Get Cantons by Province
const getCantonsByProvince = async (req, res) => {
    const {id_province} = req.params;
    try {
        const cantons = await Canton.findAll({
            where: {
                id_province
            }
        });
        return res.status(200).json({
            cantons
        });
    } catch (error) {
        return res.status(500).json({
            message: 'Error getting cantons',
            error
        });
    }
}

//Get Districts by Canton

const getDistrictsByCanton = async (req, res) => {
    const {id_canton} = req.params;
    try {
        const districts = await District.findAll({
            where: {
                id_canton
            }
        });
        return res.status(200).json({
            districts
        });
    } catch (error) {
        return res.status(500).json({
            message: 'Error getting districts',
            error
        });
    }
}

module.exports = {
    createAddress,
    getAddresses,
    getAddressById,
    updateAddress,
    deleteAddress,
    validateAddress,
    getDistricts,
    getDistrict,
    getCantons,
    getCanton,
    getProvinces,
    getProvince,
    getCantonsByProvince,
    getDistrictsByCanton
}