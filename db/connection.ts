import { Sequelize } from 'sequelize';

const db = new Sequelize('curso-node-ts', 'postgres', 'postgres', {
    host: 'localhost',
    dialect: 'postgres',
    //logging: false
});

export default db;