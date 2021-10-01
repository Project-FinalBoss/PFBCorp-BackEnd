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
        return await db('test')
    } catch (err) {
        throw err
    }
}

async function findById(id) {
    try {
        const user = await db('test').where({ id }).first()
        return user
    } catch (err) {
        throw err
    }
}



async function findBy(filter) {
    return db('test').where(filter).orderBy("userid")
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
        const ids = await db('test').insert(userData)
        const newUser = await findById(ids[0])
        return newUser
    } catch (err) {
        throw err
    }
}

async function update(id, changes) {
    try {
        await db('test').where({ id }).update(changes)
        return await findById(id)
    } catch (err) {
        throw err
    }
}

async function remove(id) {
    try {
        return await db('test').del().where({ id })
    } catch (err) {
        throw err
    }
}