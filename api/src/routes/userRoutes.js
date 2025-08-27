const express = require('express');
const router = express.Router();
const UserController = require('../controllers/userController');

router.post('/user', UserController.cadastrarUsuario);

module.exports = router;