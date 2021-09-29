const db = require('../data/db-config')

module.exports = {
    find,
    findById,
    findBy,
    // findArticle,
    add,
    update,
    remove
}


async function find() {
    try {
        return await db('users')
    } catch (err) {
        throw err
    }
}

async function findById(id) {
    try {
        const user = await db('users').where({ id }).first()
        return user
    } catch (err) {
        throw err
    }
}



async function findBy(filter) {
    return db("users").where(filter).orderBy("id")
  }


// async function findArticle(id) {
//     try {
//         const article = await
//             db('article as a')
//                 .join('users as u', 'u.id', 'a.user_id')
//                 .where({ user_id: id })
//                 .select('a.id', 'u.username', 'a.content')

//         return article
//     } catch (err) {
//         throw err
//     }
// }

async function add(userData) {
    try {
        const ids = await db('users').insert(userData)
        const newUser = await findById(ids[0])
        return newUser
    } catch (err) {
        throw err
    }
}

async function update(id, changes) {
    try {
        await db('users').where({ id }).update(changes)
        return await findById(id)
    } catch (err) {
        throw err
    }
}

async function remove(id) {
    try {
        return await db('users').del().where({ id })
    } catch (err) {
        throw err
    }
}