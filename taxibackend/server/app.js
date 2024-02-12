const express = require('express')
const mysql = require('mysql2')

const app = express()

const db = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: "root",
    password: "",
    database: "taxi"
});

db.connect(err => {
   if (err) throw err;
   console.log("Connected to MySQL database");
});


app.get('/fuvarok', (req, res) => {
    const query = "SELECT * FROM fuvar";
    db.query(query, (err, results) => {
        if (err) {
            res.status(500).send({ message: "Szerver hiba!" });
            return;
        }
        if (results.length === 0) {
            res.status(401).send({ message: "Hibás felhasználónév vagy jelszó!" });
            return;
        }
        if (results.length > 0) {
            res.json(results);
        }
        else {
            res.status(401).send();
        }
    });
})

app.delete('/fuvarok', (req, res) => {
    const id = req.body;
    const query = "DELETE FROM fuvar WHERE fuvar.id = ?";
    db.query(query, [id] ,(err, results) => {
        if (err) {
            res.status(500).send({ message: "Szerver hiba!" });
            return;
        }
        res.sendStatus(200);
    });
})


app.listen('3000', () => {
    console.log(`IP: http://localhost:3000`);
});