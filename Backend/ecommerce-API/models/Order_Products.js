const {DataTypes} = require('sequelize');
const sequelize = require('../config/database');
const Order = require('./Order');
const Product = require('./Product');

const Order_Products = sequelize.define('Order_Product', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    id_order: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model: Order,
            key: 'id'
        }
    },
    id_product: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model: Product,
            key: 'id'
        }
    },
    quantity: {
        type: DataTypes.INTEGER,
        allowNull: false
    }
}, {
    tableName: 'Order_Product',
    timestamps: false
});

Order_Products.belongsTo(Order, {foreignKey: 'id_order'});
Order_Products.belongsTo(Product, {foreignKey: 'id_product'});

module.exports = Order_Products;