const express = require('express');
const router = express.Router();
const UserController = require('../controllers/userController');

router.post('/cadastroUsuario', UserController.cadastrarUsuario);

module.exports = router;