const express = require('express');
const app = express();
const path = require('path');
const cookieParser = require('cookie-parser');
const backendRoutes = require('./routes/router.js');

const port = 3000;
const host = 'localhost';

//get
app.get('', function (req, res) {
    res.sendFile(path.join(''));
});

//post
app.post('', function (req, res) {
    res.sendFile(path.join(''));
});

