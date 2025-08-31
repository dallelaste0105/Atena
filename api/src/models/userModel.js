const db = require('../config/db');

function createUser(id, name, email, password, callback) {
  const query = 'INSERT INTO users (name, email, password) VALUES (?, ?, ?)';
  db.query(query, [id, name, email, password], callback);
}

module.exports = { createUser };