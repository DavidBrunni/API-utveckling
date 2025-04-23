const express = require('express');
require('dotenv').config();

const app = express();
app.use(express.json());

const categoriesRoutes = require('./routes/categoriesRoutes');
app.use('/categories', categoriesRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`🚀 Server körs på http://localhost:${PORT}`);
});