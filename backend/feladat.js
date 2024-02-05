const express = require('express');
const app = express();
const path = require('path');
const cookieParser = require('cookie-parser');
const backendRoutes = require('/routes/routes.js');

const frontendPath = path.join(__dirname, '..', 'frontend');
const imagePath = path.join(__dirname, 'images');

const port = 3000;
const host = 'localhost';