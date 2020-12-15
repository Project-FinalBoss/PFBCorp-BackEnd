const express = require("express");
const helmet = require('helmet');
const session = require('express-session');

const UserRouter = require('./users/user-router');
const ArticleRouter = require('./article/article-router');

const server = express();

const sessionConfig = {
    name: 'pfbSess',
    secret: 'FinalChan is a sweetheart lowkey',
    cookie: 
    {
     maxAge:    1000 * 30,
     secure: false
    }

}

server.use(helmet());
server.use(express.json());
server.use(session(sessionConfig));


server.use('/api/users', UserRouter);
server.use('/api/article', ArticleRouter);


module.exports = server;
