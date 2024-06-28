var express = require('express');
var app = express();
const bodyParser = require('body-parser');
const bcrypt = require('bcrypt');
const cors = require('cors');
const mysql = require('mysql');
var con = mysql.createConnection({
    host: 'localhost', // Corrected 'root' to 'host'
    user: 'root',
    password: '',
    database: 'justice'
});

con.connect(function(err) {
    if (err) {
        throw err;
    }
    console.log("Database is connected successfully");
});

app.use(bodyParser.json());
app.use(cors());

app.get('/', function(req, res) {
    var getDataQuery = "SELECT * FROM record";
    con.query(getDataQuery, function(err, result) {
        if (err) {
            throw err;
        }
        res.json(result);
        res.end();
        console.log(result)
    });
});

app.post('/sends', function(req, res) { // Corrected route to '/sends'
    var postData = req.body; // Assuming you're using middleware to parse JSON
  
    var insertQuery = "INSERT INTO record (fullName, phoneNumber, EmailAddress, crimeName, crimeScene, details) VALUES (?, ?, ?, ?, ?, ?)";
    con.query(insertQuery, [postData.fullName, postData.phoneNumber, postData.EmailAddress, postData.crimeName, postData.crimeScene, postData.details], function(err, result) {
        if (err) {
            throw err;
        }
        res.json(result);
        res.end();
    });
});

app.post('/login', (req, res) => {
    const { username, password } = req.body;
    // Check if the username and password are valid
    const query = `SELECT * FROM users WHERE username = '${username}' AND password = '${password}'`;
    con.query(query, function (err,data) {
        if(data.length > 0) {
            res.status(200).json({success: true, message: 'Login successful'});
            res.end();
        } else {
            res.status(200).json({success: false, message: 'Invalid Credentials'});
            res.end();
        }
    });
  });

app.post('/person', function(req, res) {
    var postData = req.body; // Assuming you're using middleware to parse JSON
    
    var insertQuery = "INSERT INTO users (Name, username, password, email) VALUES (?, ?, ?, ?)";
    con.query(insertQuery, [postData.Name, postData.username, postData.password, postData.email], function(err, result) {
        if (err) {
            throw err;
        }
        res.json(result);
    });
});


app.listen(3000);

// Now, the fetch request matches the correct route
// fetch("http://localhost:3000/", {
//     method: "POST",
//     headers: {
//         'Content-Type': 'application/json'
//     },
//     body: JSON.stringify({
//         id: "",
//         fullName: "IRADUKUNDA Bonte",
//         phoneNumber: "732002012",
//         EmailAddress: "tuyikundecythnia@gmail.com",
//         crimeName: "paying money",
//         crimeScene: "Kagugu",
//         details: "they refused to pay the money I have worked for in my company"
//     })
// })
// .then(response => response.json())
// .then(data => console.log(data))
// .catch(err => console.log('ERROR', err));
