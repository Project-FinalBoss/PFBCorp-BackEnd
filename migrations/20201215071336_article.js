exports.up = function(knex, Promise) {
    return knex.schema.createTable('article', function(table) {
      table.increments();
      table.string('title').notNullable();
      table.string('image').notNullable();
      table.string('author').notNullable();
      table.string('content').notNullable();
      table.string('article_type').notNullable();
      table.string('tags').notNullable();
      table.integer('article_id').references('tag_id').inTable('tags');
      table.integer('user_id').references('id').inTable('users');
      table.timestamp('created_at').defaultTo(knex.fn.now());
      table.timestamp('updated_at').defaultTo(knex.fn.now());
    })
  }
  
  exports.down = function(knex, Promise) {
    return knex.schema.dropTable('article');
  }