const UserModel = require('../models/userModel');
const jwt = require('jsonwebtoken');
const segredo = "minhaChave";

function cadastrarUsuario(req, res) {
  const {name, email, password } = req.body;

  if (!name || !email || !password) {
    return res.status(400).json({ error: 'Campos obrigatórios' });
  }

  UserModel.userExist(name, email, password, (err, result) => {
    if (err) {
      return res.status(500).json({ error: 'Erro ao verificar usuário existente' });
    }

    if (result.length > 0) {
      return res.status(409).json({ error: 'Usuário já existe' });
    }

    UserModel.createUser(id, name, email, password, (err, result) => {
      if (err) {
        return res.status(500).json({ error: 'Erro ao salvar no banco' });
      }
      
    });
  });
}

function pegarUsuario(req, res){
  const {name, email, password} = req.body;
  if(UserModel.getUser(nome, email, senha)){
    const token = jwt.sign({name:name,email:email,password:password}, segredo, {expiresIn:'48h'})
    res.status(201).json({message:token})
  }

  if (err) {
        return res.status(500).json({ error: 'Usuario não existe' });
      }
}

module.exports = { cadastrarUsuario, pegarUsuario };
