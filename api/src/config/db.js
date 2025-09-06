const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: 'maglev.proxy.rlwy.net',
  port: 32168,
  user: 'root',
  password: 'XEksQYLHDQPaRckAhQLhwNjcbVUfGrSO',
  database: 'railway'
});

connection.connect((err) => {
  if (err) {
    console.error('❌ Erro ao conectar no banco:', err);
    return;
  }
  console.log('✅ Conectado ao MySQL via Railway Proxy!');
});

module.exports = connection;