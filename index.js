const mysql = require('mysql');
const express = require('express');
var app = express();
const bodyparser = require('body-parser');
app.use(bodyparser.json());

var mysqlConnection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'bhargowebsite',
    multipleStatements: true
});

mysqlConnection.connect((err) => {
    if (!err)
        console.log('connection successfull');
    else
        console.log('connection faild');
});

app.listen(3000, () => console.log('Exppres Server is running at port 3000'));

app.get('/organizations', (res, req) => {
    mysqlConnection.query('SELECT * FROM organizationcreation', (err, rows, fields) => {
        if (!err) {
            console.log("Data  is retrive successfully");
            console.log(rows);
            req.send(rows);
        } else {
            console.log("Error" + err);
        }
    });
});

app.post('/newOrganizations', (req, res) => {

    let regOrg = req.body;

    console.log(regOrg.Org_Name);

    let insertQuery = 'INSERT INTO organizationcreation (Org_Name, Org_Type, Primary_Person_Name, No_of_Employees, Email, Mobile_Number, Fax) VALUES(' + '"' + regOrg.Org_Name + '"' + ',' + '"' + regOrg.Org_Type + '"' + ',' + '"' + regOrg.Primary_Person_Name + '"' + ' ,' + '"' + regOrg.No_of_Employees + '"' + ' ,' + '"' + regOrg.Email + '"' + ' ,' + regOrg.Mobile_Number + ', ' + '"' + regOrg.Fax + '"' + ')';

    mysqlConnection.query(insertQuery, (err, rows, fields) => {
        if (!err) {
            console.log("Data  is inserted successfully");


        } else {
            console.log(err);
        }
    });

});