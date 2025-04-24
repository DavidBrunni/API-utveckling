const express = require('express');
require('dotenv').config();

const app = express();
app.use(express.json());

const categoriesRoutes = require('./routes/categoriesRoutes');
const productsRoutes = require('./routes/productsRoutes');

app.use('/categories', categoriesRoutes);
app.use('/products', productsRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`🚀 Server körs på http://localhost:${PORT}`);
});