import 'dart:io';

void main(){
  /* - stdin.readLineSync retorna uma String
     - precisa converter antes de atribuir a um inteiro
     - continua com erro pq o método parse recebe String,
       e não String? (que é String ou null)
     - ao colocar o ! estamos garantindo para o compilador
       que não vai vir nulo, e aí passa
     - porém poderíamos testar a variável, o que é mais 
       correto
     */
  int idade = int.parse(stdin.readLineSync()!);
  print(idade);
}