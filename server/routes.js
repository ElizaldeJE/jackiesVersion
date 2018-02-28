const db = require('../database/index.js');

//Query dB for quotes
exports.getQuotes = (req, res) => {
  db.getHomeQuotes()
    .then(data => {
      res.status(200).send(data)
    })
    .catch(err => { console.log(err) })
  }

//Query dB for students & mentors

exports.getCohortMembers = (req, res) => {
  Promise.all([
    db.getCohortMentors(),
    db.getCohortStudents()
  ])
    .then(data => {
      res.status(200).send(data)
    })
    .catch(err => { console.log(err) })
}

//Query dB for single student
exports.getSingleStudent = function(req, res) {
  db.getSingleProfile(data => {
      res.status(200).json(data)
    });
  }
