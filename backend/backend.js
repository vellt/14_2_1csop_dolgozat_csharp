const express = require('express');
const cors = require('cors');
const mysql = require('mysql');
const app = express();

const host = 'localhost';
const port = 3000;
app.use(cors());
app.use(express.json());

let connection = mysql.createConnection({
    host: host,
    user: 'root',
    password: '',
    database: 'etterem'
});


app.get('/etterem', (req, res) => {
    connection.query('SELECT * FROM etlap', (err, results) => {
        if (err) {
            console.log(err);
            res.send("hiba");
        } else {
            console.log(results);
            res.send(results);
        }
    });
});

app.post('/etlap', (req, res) => {
    const { id, eloado, neve, energia, szenh, ara, kategoria } = req.body;
    console.log(id);
    connection.query('INSERT INTO etlap (id, neve, energia, szenh, ara, kategoria) VALUES(NULL, ?,?,?,?,?)', [id, neve, energia, szenh, ara, kategoria], (err, results) => {
        if (err) {
            console.log(err);
            res.send("hiba");
        } else {
            console.log(results);
            res.send("Sikeres felvétel!");
        }
    });
});

app.listen(port, host, () => {
    console.log(`IP: http://${host}:${port}`);
});