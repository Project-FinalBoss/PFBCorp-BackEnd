exports.up = function(knex, Promise) {
    return knex.schema.createTable('companyNews', function(table) {
      table.increments();
      table.string('title').notNullable();
      table.string('image').notNullable();
      table.string('author').notNullable();
      table.string('content').notNullable();
      table.string('tags').notNullable();
      table.integer('cNews_id').references('article_id').inTable('article');
      table.integer('user_id').references('id').inTable('users');
      table.timestamp('created_at').defaultTo(knex.fn.now());
      table.timestamp('updated_at').defaultTo(knex.fn.now());
    })
  }
  
  exports.down = function(knex, Promise) {
    return knex.schema.dropTable('companyNews');
  }