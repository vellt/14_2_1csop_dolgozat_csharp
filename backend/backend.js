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
    database: 'taxi'
});

app.get('/fuvarok', (req, res) => {
    connection.query('SELECT * FROM fuvar', (err, results) => {
        if (err) {
            console.log(err);
            res.send("Hiba a kérés során.");
        }
        else {
            console.log(results);
            res.send(results);
        }
    })
});

app.delete('/fuvarok', (req, res) => {
    const id = req.body.id;
    console.log(id);
    connection.query('DELETE FROM fuvar WHERE id=?', [id], (err, results) => {
        if (err) {
            console.log(err);
            res.send("Hiba a törlés során.");
        }
        else {
            console.log(results);
            res.send("Sikeres törlés.");
        }
    })
});

app.listen(port, host, () => {
    console.log(`IP: http://${host}:${port}`);
});