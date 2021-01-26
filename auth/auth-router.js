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