require('dotenv').config();
const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: process.env.DB_HOST || 'localhost',
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || '',
  database: process.env.DB_NAME || 'paradise_for_geeks'
});

connection.connect(err => {
  if (err) {
    console.error('❌ DB-anslutning misslyckades:', err);
    return;
  }
  console.log('✅ Ansluten till MySQL');
});

module.exports = connection;