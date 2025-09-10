const express = require('express');
const router = express.Router();
const UserController = require('../controllers/userController');

router.post('/cadastroUsuario', UserController.cadastrarUsuario);
router.post('/cadastroUsuario', UserController.pegarUsuario);

module.exports = router;