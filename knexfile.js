// Update with your config settings.

module.exports = {

  development: {
    client: 'sqlite3',
    connection: {
      filename: './data/pfbdata.sql'
    }
  },

  
  migrations: {

    directory: './data/migrations'
  },

  seeds: {

    directory: './data/seeds'
  },

  pool: (conn, done) => {

    conn.run('PRAGMA foreign_keys = ON', done);
  }

};
