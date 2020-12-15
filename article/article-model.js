const db = require('../data/db-config');

module.exports = {
    find,
    findById,
    findByUser,
    findByTag,
    add,
    update,
    remove
}

async function find() {
    try {
        return await db('article');
    } catch (err) {
        throw err;
    }
}



async function findById(article_id) {
    try {
        const article = await db('article').where({ article_id }).first();
        return article;
    } catch (err) {
        throw err;
    }
}


async function add(articleData) {
    try {
        const article_ids = await db('article').insert(articleData);
        const newArticle = await findById(article_ids[0]);
        return newArticle;
    } catch (err) {
        throw err;
    }
}


async function update(article_id, changes) {
    try {
        await db('article').where({ article_id }).update(changes);
        return await findById(article_id);
    } catch (err) {
        throw err;
    }
}


async function remove(article_id) {
    try {
        return await db('article').del().where({ article_id });
    } catch (err) {
        throw err;
    }
}