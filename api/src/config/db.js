const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME
});

connection.connect((err) => {
  if (err) {
    console.error('❌ Erro ao conectar no banco:', err);
    return;
  }
  console.log('✅ Conectado ao MySQL via Railway Proxy!');
});

module.exports = connection;