// Programa: cap1exe1.js
// Ambiente: Node.js
// Regime: Design-time
// Descrição: Mostra literal, constante e variável

const SAUDACAO = "Oi, ";	// Definindo uma constante
let nome;			// Declarando uma variável

console.log("\nLiteral clássica HelloWorld:");
console.log("\x1b[7m%s\x1b[0m", "Oi, mundo!");

console.log("\nVARIÁVEIS\nValor padrão da variável antes da inicialização:");
console.log("nome = " + nome);
console.log(SAUDACAO + nome);

console.log("\nInicialização - primeira atribuição:");
nome = "Ana";
console.log("nome = " + nome);
console.log(SAUDACAO + nome);

console.log("\nNova atribuição:");
nome = "Bela";
console.log("nome = " + nome);
console.log(SAUDACAO + nome);

console.log("\nRESUMO");
console.log("Constante:   ", SAUDACAO);
console.log("Variável:    ", nome);
console.log("Concatenação:", SAUDACAO + nome);