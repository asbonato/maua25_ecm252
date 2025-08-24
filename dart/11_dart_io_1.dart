import 'dart:io';

void main(){
  //exibe o texto e pular uma linha
  stdout.writeln('Digite o seu nome:');
  //lê o que o usuário digitou e devolve uma string
  var nome = stdin.readLineSync();
  //exibe o texto sem pular linha
  stdout.write('Olá, $nome');
}