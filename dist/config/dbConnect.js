"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const pg_1 = require("pg");
const pool = new pg_1.Pool({
    host: 'localhost',
    port: 5432,
    user: 'postgres',
    password: "postgres",
    database: 'myShop'
});
exports.default = pool;
//# sourceMappingURL=dbConnect.js.map