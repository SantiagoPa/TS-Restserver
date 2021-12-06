import { DataTypes } from "sequelize";
import db from "../db/connection";

const User = db.define('user',{
    nameuser:{
        type: DataTypes.STRING
    },

    email:{
        type: DataTypes.STRING
    },

    estado:{
        type: DataTypes.BOOLEAN,
        defaultValue: true,
    },
});

export default User;