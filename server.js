const express = require("express")
const helmet = require('helmet')
const app = express()
const UserRouter = require('./users/user-router')



const PORT = process.env.DB_PORT || 9000




app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`)
})


app.use(helmet())
