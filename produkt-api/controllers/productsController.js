const db = require('../models/db');

// Hämta alla produkter
exports.getAllProducts = (req, res) => {
  db.query('SELECT * FROM products', (err, results) => {
    if (err) return res.status(500).send(err);
    res.json(results);
  });
};

// Hämta en specifik produkt
exports.getProductById = (req, res) => {
    const { id } = req.params;  
    db.query('SELECT * FROM products WHERE id = ?', [id], (err, results) => {
      if (err) return res.status(500).send(err);
      if (results.length === 0) {
        return res.status(404).json({ message: 'Produkt inte funnen' });
      }
      res.json(results[0]); 
    });
  };

// Skapa en ny produkt
exports.createProduct = (req, res) => {
  const { name, category_id, price } = req.body;
  db.query('INSERT INTO products (name, category_id, price) VALUES (?, ?, ?)', [name, category_id, price], (err, result) => {
    if (err) return res.status(500).send(err);
    res.status(201).json({ id: result.insertId, name, category_id, price });
  });
};

// Uppdatera produkt
exports.updateProduct = (req, res) => {
  const { id } = req.params;
  const { name, category_id, price } = req.body;
  db.query('UPDATE products SET name = ?, category_id = ?, price = ? WHERE id = ?', [name, category_id, price, id], (err) => {
    if (err) return res.status(500).send(err);
    res.json({ message: 'Produkt uppdaterad' });
  });
};

// Radera produkt
exports.deleteProduct = (req, res) => {
  const { id } = req.params;
  db.query('DELETE FROM products WHERE id = ?', [id], (err) => {
    if (err) return res.status(500).send(err);
    res.json({ message: 'Produkt raderad' });
  });
};