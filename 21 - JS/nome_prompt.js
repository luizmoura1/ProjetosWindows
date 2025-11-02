// Programa: nome_prompt.js
// Ambiente: Node.js
// Descrição: Este programa pede o nome do usuário e imprime "Oi, <nome>".

const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question("Digite seu nome: ", function(nome) {
    console.log("Oi, " + nome);
    rl.close();
});
