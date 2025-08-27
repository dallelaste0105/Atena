const express = require('express');
const app = express();
const userRoutes = require('./routes/userRoutes');

app.use(express.json());
app.use(userRoutes);

module.exports = app;

/*
To Run: node server.js

CONVENTIONAL COMMITS:

feat: nova funcionalidade

fix: correção de bug

docs: mudanças apenas na documentação

style: mudanças de formatação (espaços, vírgulas, indentação) sem afetar código

refactor: refatoração sem mudança de comportamento

perf: melhoria de performance

test: adicionar ou corrigir testes

chore: tarefas que não afetam o código de produção (configs, dependências, CI, etc.)

build: mudanças em build, dependências ou ferramentas

ci: mudanças em pipelines de integração contínua
*/