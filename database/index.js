const mysql = require('mysql2');
const mysqlConfig = require('./config.js');

const connection = mysql.createConnection(mysqlConfig);

const getHomeQuotes = function() {
  return new Promise((resolve, reject) => {
    connection.query('SELECT * FROM quotes', (err, data) => {
      if (err) {
        return reject(err);
      }
    return resolve(data);
    })
  })
};

const getCohortStudents = function() {
  return new Promise((resolve, reject) => {
    connection.query('SELECT * FROM profiles WHERE role = "student"', (err, data) => {
      if (err) {
        return reject(err);
      }
    return resolve(data);
    })
  })
};

const getCohortMentors = function() {
  return new Promise((resolve, reject) => {
    connection.query('SELECT * FROM profiles WHERE role = "mentor"', (err, data) => {
      if (err) {
        return reject(err);
      }
    return resolve(data);
    })
  })
};

const getSingleProfile = function() {
  return new Promise((resolve, reject) => {
    connection.query('SELECT * FROM profiles WHERE id = ?', (err, data) => {
      if (err) {
        return reject(err);
      }
    return resolve(data);
    })
  })
};

module.exports = {
  getHomeQuotes,
  getCohortStudents,
  getCohortMentors,
  getSingleProfile
};
