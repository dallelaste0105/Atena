const db = require('../config/db');

function createUser(id, name, email, password, callback) {
  const query = 'INSERT INTO users (name, email, password) VALUES (?, ?, ?)';
  db.query(query, [id, name, email, password], callback);
}

function doLogin(name, email, password){
  const query = 'SELECT * FROM users WHERE name = ? AND email = ? AND password = ?';
  db.query(query, [name, email, password]);
}

module.exports = { createUser };
module.exports = { doLogin };