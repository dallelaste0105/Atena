const express = require('express');
const router = express.Router();
const UserController = require('../controllers/userController');

router.post('/cadastroUsuario', userController.cadastrarUsuario);
router.get('/pegarUsuario', userController.pegarUsuario);

module.exports = router;