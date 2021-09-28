// const { pool } = require('./data/db-config')
const express = require("express")
const helmet = require('helmet')
const app = express()

const UserRouter = require('./users/user-router')

const PORT = process.env.PORT || 9000

app.get('/', (req, res) =>{
    res.send("Hello world")
})

app.get("/users/register", (req, res) =>{

})


app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`)
})


app.use(helmet())
app.use('/users/user-router', UserRouter)