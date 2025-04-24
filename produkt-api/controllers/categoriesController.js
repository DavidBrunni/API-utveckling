const db = require('../models/db');

// Hämta alla kategorier
exports.getAllCategories = (req, res) => {
  db.query('SELECT * FROM categories', (err, results) => {
    if (err) return res.status(500).send(err);
    res.json(results);
  });
};

// Hämta alla produkter i en viss kategori
exports.getProductsByCategory = (req, res) => {
  const { id } = req.params; 
  db.query('SELECT * FROM products WHERE category_id = ?', [id], (err, results) => {
    if (err) return res.status(500).send(err);
    res.json(results); 
  });
};

// Skapa ny kategori
exports.createCategory = (req, res) => {
  const { name } = req.body;
  db.query('INSERT INTO categories (name) VALUES (?)', [name], (err, result) => {
    if (err) return res.status(500).send(err);
    res.status(201).json({ id: result.insertId, name });
  });
};

// Uppdatera kategori
exports.updateCategory = (req, res) => {
  const { id } = req.params;
  const { name } = req.body;
  db.query('UPDATE categories SET name = ? WHERE id = ?', [name, id], (err) => {
    if (err) return res.status(500).send(err);
    res.json({ message: 'Kategori uppdaterad' });
  });
};

// Radera kategori
exports.deleteCategory = (req, res) => {
  const { id } = req.params;
  db.query('DELETE FROM categories WHERE id = ?', [id], (err) => {
    if (err) return res.status(500).send(err);
    res.json({ message: 'Kategori raderad' });
  });
};

