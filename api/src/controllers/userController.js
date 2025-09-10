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

function pegarUsuario(req, res) {
  const { email, password } = req.body;

  // 1. Buscar usuário no banco
  UserModel.getUser(email, (err, result) => {
    if (err || result.length === 0) {
      return res.status(401).json({ error: 'Usuário não encontrado' });
    }

    const user = result[0];

    // 2. Comparar senha
    const senhaCorreta = bcrypt.compareSync(password, user.password);
    if (!senhaCorreta) {
      return res.status(401).json({ error: 'Senha incorreta' });
    }

    // 3. Gerar token 
    const token = jwt.sign({ id: user.id, name: user.name, email: user.email }, segredo, { expiresIn: '48h' });

    // 4. Retornar token
    res.status(200).json({ token });
  });
}


module.exports = { cadastrarUsuario, pegarUsuario };
