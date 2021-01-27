/* 
Authentication router for token
*/
const router = require('express').Router();
// bcrypt for password
const bcrypt = require("bcryptjs");
// token gen
const jwt = require("jsomwebtoken");

//user query
const Users = require("../users/user-model")


//register router

router.post("/register"), (req, res) => {
    let creds = req.body:
    const rounds = process.env.HASH_ROUNDS || 8;

    const hash = bcrypt.hash
}