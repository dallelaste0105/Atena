const db = require('../config/db');

function createUser(id, name, email, password, callback) {
  const query = 'INSERT INTO users (id, name, email, password) VALUES (?, ?, ?, ?)';
  db.query(query, [id, name, email, password], callback);
}

function userExist(name, email, password, callback) {
  const query = 'SELECT * FROM users WHERE name = ? OR email = ? OR password = ?';
  db.query(query, [name, email, password], callback);
}

function getUser(name, email, password, callback) {
  const query = 'SELECT * FROM users WHERE name = ? AND email = ? AND password = ?';
  db.query(query, [name, email, password], callback);
}

module.exports = { createUser, userExist, getUser };