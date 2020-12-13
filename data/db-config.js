const knex = require('knex');

const config = {
  client: 'sqlite3',
  connection: {
    filename: './pfbdata.sql',
  },
  useNullAsDefault: true,
};

module.exports = knex(config);