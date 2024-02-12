const express = require('express');
const cors = require('cors');
const mysql = require('mysql');

let port = 3000;
let host = 'localhost';

const connection = mysql.createConnection({
    host: host,
    user: 'root',
    password: '',
    database: 'taxi'
});

const app = express();
app.use(cors());
app.use(express.json());

app.get('/taxi', (req, res) => {
    connection.query('SELECT * FROM fuvar', (err, results) => {
        if (err) {
            res.send("hiba");
            console.log(err);
        } else {
            console.log(results);
            res.send(results);
        }
    });
});

app.post('/taxi', (req, res) => {
    const { id, indulas_idopontja, utazas_idotartma, megtett_tavolsag, viteldij, borravalo, fizetes_modja } = req.body;
    connection.query('INSERT INTO fuvar (id, indulas_idopontja, utazas_idotartma, megtett_tavolsag, viteldij, borravalo, fizetes_modja ) VALUES (?, ?, ?, ?, ?, ?, ?)', [id, indulas_idopontja, utazas_idotartma, megtett_tavolsag, viteldij, borravalo, fizetes_modja], (err, results) => {
        if (err) {
            res.send("hiba");
            console.log(err);
        } else {
            console.log("Sikeres felvitel");
            res.send("Sikeres felvitel");
        }
    });
});





app.listen(port, host, () => {
    console.log(`ip: http://${host}:${port}`);
});