const db = require('../config/db');

function createUser(name, email, password, callback) {
  const query = 'INSERT INTO users (name, email, password) VALUES (?, ?, ?)';
  db.query(query, [name, email, password], callback);
}

module.exports = { createUser };