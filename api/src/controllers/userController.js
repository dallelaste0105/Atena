const UserModel = require('../models/userModel');

function cadastrarUsuario(req, res) {
  const { name, email, password } = req.body;

  if (!name || !email || !password) {
    return res.status(400).json({ error: 'Campos obrigatórios' });
  }

  UserModel.createUser(name, email, password, (err, result) => {
    if (err) {
      return res.status(500).json({ error: 'Erro ao salvar no banco' });
    }

    res.status(201).json({ message: 'Usuário cadastrado com sucesso' });
  });
}

module.exports = { cadastrarUsuario };