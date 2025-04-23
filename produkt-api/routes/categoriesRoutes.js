const express = require('express');
const router = express.Router();
const controller = require('../controllers/categoriesController');

router.get('/', controller.getAllCategories);
router.get('/:id/products', controller.getProductsByCategory);
router.post('/', controller.createCategory);
router.patch('/:id', controller.updateCategory);
router.delete('/:id', controller.deleteCategory);

module.exports = router;