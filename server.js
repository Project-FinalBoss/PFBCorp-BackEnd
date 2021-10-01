// const { pool } = require('./data/db-config')
const express = require("express")
const helmet = require('helmet')
const app = express()
const { Pool } = require('pg')
const UserRouter = require('./users/user-router')



const PORT = process.env.DB_PORT || 9000
const USER = process.env.DB_USER
const PASSWORD = process.env.DB_PASSWORD
const HOST = process.env.DB_HOST
const DB =  process.env.DB_DATABASE


const pool = new Pool({USER, HOST, DB, PASSWORD, PORT })


app.get('/', (req, res) =>{
    res.send("Hello world")
})



    pool.query('SELECT * FROM register', (err, res) => {
        if (err) return console.log(err)
        console.log(res.rows)
    })




app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`)
})


app.use(helmet())
app.use('/users/user-router', UserRouter)