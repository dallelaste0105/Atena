const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: 'mysql.railway.internal', // ou maglev.proxy.rlwy.net se estiver usando proxy
  port: 3306,
  user: 'root',
  password: 'XEksQYLHDQPaRckAhQLhwNjcbVUfGrSO',
  database: 'railway'
});

connection.connect((err) => {
  if (err) {
    console.error('Erro ao conectar no banco:', err);
    return;
  }
  console.log('Conectado ao MySQL no Railway!');
});

module.exports = connection;