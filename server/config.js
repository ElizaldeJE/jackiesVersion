const express = require("express");
const bodyParser = require("body-parser");
const route = require("./routes");
const db = require('../database/index.js');
const app = express();

//middleware
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
app.use(express.static(__dirname + "/../react-client/dist"));
app.use(express.static(__dirname + "/../server/public"));

//GET request routes
app.get("/home", route.getQuotes)

app.get("/cohort", route.getCohortMembers)

//app.get('/student/:id', routes.renderStudent)

module.exports = app;
