/* 
Authentication router for token
*/
require("dotenv").config();
const router = require('express').Router();
// bcrypt for password
const bcrypt = require("bcryptjs");
// token gen
const jwt = require("jsomwebtoken");

//user query
const Users = require("../users/user-model")
const { isValid } = require("../config/users-service");


//register router

router.post("/register", (req, res) => {
    let creds = req.body;
    if (isValid(creds)) {
            const rounds = process.env.HASH_ROUNDS || 8;

            const hash = bcrypt.hash(creds.password, rounds)

            creds.password = hash

            Users.add(creds)
                .then(user => {
                    res.status(201).json({ data: user});
                })
                .catch(error => {
                    res.status(500).status({message: error.message});
                })
    } else {
        res.status(400).json
    }
});
