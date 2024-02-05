const express = require('express');
const cors = require('cors');
const mysql = require('mysql');
const app = express();

const host = 'localhost';
const port = 3000;

app.use(cors());
app.use(express.json());

var connection = mysql.createConnection({
    host: host,
    user: 'root',
    password: '',
    database: 'etterem'
});

app.get('/etelek', (req,res)=> {
    connection.query('SELECT * FROM etterem', (err,res)=>{
        if(err) {
            res.send("hiba");
        }
        else{
            res.send(res);
        }
    });
});

app.post('/etelek', (req, res) =>{
    const {neve , energia, szenh, ara, kategoria} = req.body;
});
connection.query('INSERT INTO etterem (id, neve , energia, szenh, ara, kategoria) VALUES (null,? , ? , ? , ? , ?)',
[ neve , energia, szenh, ara, kategoria], (err, res)=> {
    if(err){
        res.send("hiba");
    }
    else 
    {
        res.send("Sikeres felvétel!");
    }
});

app.listen(port, host, ()=> {
    console.log(`IP: https://${host},${port}`);
})