const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: 'containers.railway.app',
  port: 3306,
  user: 'root',
  password: 'railway',
  database: 'railway'
});

connection.connect((err) => {
  if (err) {
    console.error('Erro ao conectar no banco:', err);
    return;
  }
  console.log('Conectado ao banco MySQL no Railway!');
});

module.exports = connection;