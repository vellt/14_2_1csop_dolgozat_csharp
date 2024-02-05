const express = require('express');
const app = express();
const path = require('path');

const port = 3000;
const host = 'localhost';

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.listen(port, host, () => {
    console.log(`IP: http://${host}:${port}`);
});

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'etterem'
});

connection.connect((err) => {
    if (err) {
        console.log(`Hiba az adatbázis kapcsolódásakor: ${err}`);
        return;
    }

    console.log('Sikeres adatbázis kapcsolat!');
});

app.get('/etterem', (req, res)=> {
    connection.query('SELECT * FROM etlap', (err, results) =>{
        if(err){
            console.log(err);
            res.send("Hiba");
        }else{
            console.log(results);
            res.send(results);
        }
    });
});

app.get('/etterem', (req, res)=> {
    connection.query('GET * FROM etlap', (err, results) =>{
        if(err){
            console.log(err);
            res.send("Hiba");
        }else{
            console.log(results);
            res.send(results);
        }
    });
});

app.post('/etterem', (req, res)=> {
    connection.query('POST * FROM etlap', (err, results) =>{
        if(err){
            console.log(err);
            res.send("Hiba");
        }else{
            console.log(results);
            res.send(results);
        }
    });
});

app.put('/etterem', (req, res)=> {
    connection.query('PUT * FROM etlap', (err, results) =>{
        if(err){
            console.log(err);
            res.send("Hiba");
        }else{
            console.log(results);
            res.send(results);
        }
    });
});

module.exports = connection;