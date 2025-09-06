const UserModel = require('../models/userModel');

function cadastrarUsuario(req, res) {
  const { id, name, email, password } = req.body;

  if (!id || !name || !email || !password) {
    return res.status(400).json({ error: 'Campos obrigatórios' });
  }

  UserModel.createUser(id, name, email, password, (err, result) => {
    if (err) {
      return res.status(500).json({ error: 'Erro ao salvar no banco' });
    }

    res.status(201).json({ message: 'Usuário cadastrado com sucesso' });
  });
}

function pegarUsuario(req, res) {
  const { name, email, password } = req.query;

  UserModel.doLogin(name, email, password, (err, result) => {
    if (err) {
      return res.status(500).json({ error: 'Erro ao buscar no banco' });
    }

    if (result.length === 0) {
      return res.status(404).json({ error: 'Usuário não encontrado' });
    }

    res.status(200).json(result[0]);
  });
}

module.exports = { cadastrarUsuario, pegarUsuario };