const express = ('express');
const cors = ('cors');
const mysql = ('mysql');
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

app.get('/etelek', (req, res) => {
    connection.query('SELECT * FROM etelek', (err, results) => {
        if (err) {
            console.log(err);
            res.send("hiba");
        } else {
            console.log(results);
            res.send(results);
        }
    });
});

app.post('/etelek', (req, res) => {
    const { neve, energia, szenh, ara, kategoria } = req.body;
    console.log(neve, energia, szenh, ara, kategoria);

    connection.query('INSERT INTO etelek(id, neve, energia, szenh, ara, kategoria)', { neve, energia, szenh, ara, kategoria }, (err, results) => {
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
})



