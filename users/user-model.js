const db = require('../data/pfbdata.sql');

module.exports = {
    find,
    findById,
    findContent,
    add,
    update,
    remove
}

//----------------------------------------------------------------------------//
// find()
//----------------------------------------------------------------------------//
// method to return all users.
//----------------------------------------------------------------------------//
async function find() {
    try {
        return await db('Users');
    } catch (err) {
        throw err;
    }
}

//----------------------------------------------------------------------------//
// findById()
//----------------------------------------------------------------------------//
// The .first() method provides a simple way to detect empty results. .where()
// returns an array, but it could be an empty array. Using .first() returns the
// first object in the array, and if the array is empty, the first object is
// "undefined", which can be an easy test for "not the data I was looking for".
//
// you could also test the length of the array, and there are other methods to
// determine that the query didn't return the right stuff.
//----------------------------------------------------------------------------//
async function findById(id) {
    try {
        const user = await db('Users').where({ id }).first();
        return user;
    } catch (err) {
        throw err;
    }
}

//----------------------------------------------------------------------------//
// findPosts()
//----------------------------------------------------------------------------//
// Good example of using joins in knex. Take some time to look at the variety of
// parameter syntax options you have for the .join() method on the knexjs.org
// website.
//----------------------------------------------------------------------------//
async function findContent(id) {
    try {
        const content = await
            db('content as c')
                .join('Users as u', 'u.id', 'c.user_id')
                .where({ user_id: id })
                .select('c.id', 'u.username', 'c.content');

        return content;
    } catch (err) {
        throw err;
    }
}

//----------------------------------------------------------------------------//
// add()
//----------------------------------------------------------------------------//
// we can just use the findById() method to return the new object after it has
// been added. Knex returns an array of ID's of newly created objects. Since we
// are only creating a single object, we get an array with one value, and use it
// to search for the newly created record. 
//----------------------------------------------------------------------------//
async function add(userData) {
    try {
        const ids = await db('Users').insert(userData);
        const newUser = await findById(ids[0]);
        return newUser;
    } catch (err) {
        throw err;
    }
}

//----------------------------------------------------------------------------//
// update()
//----------------------------------------------------------------------------//
// again, using findById() to find the object that we changed.
//----------------------------------------------------------------------------//
async function update(id, changes) {
    try {
        await db('Users').where({ id }).update(changes);
        return await findById(id);
    } catch (err) {
        throw err;
    }
}

//----------------------------------------------------------------------------//
// remove()
//----------------------------------------------------------------------------//
// simply delete the right one... :)
//----------------------------------------------------------------------------//
async function remove(id) {
    try {
        return await db('Users').del().where({ id });
    } catch (err) {
        throw err;
    }
}