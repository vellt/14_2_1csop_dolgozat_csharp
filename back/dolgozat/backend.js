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

app.get('/taxi', (req, res) => {
    connection.query('SELECT * FROM fuvar', (err, results) => {
        if (err) {
            console.log(err);
            res.send("Hiba");
        } else {
            console.log(results);
            res.send(results);
        }
    });
});
app.delete('/taxi', (req, res) => {
    const id = req.body.id;
    console.log(id);
    connection.query('DELETE FROM taxi WHERE id=?', [id], (err, results) => {
        if (err) {
            console.log(err);
            res.send("Hiba");
        } else {
            console.log(results);
            res.send("Sikeres torles!");
        }
    });
});


app.listen(port, host, () => {

    console.log(`IP: http://${host}:${port}`);
});