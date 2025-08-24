void main(){
  //variável estaticamente tipada é checada em tempo de compilação e de execução
  int a = 2;
  print(a.runtimeType);
  //erro em tempo de compilação, pois o método não existe no tipo int
  //a.indexOf("b");
  //erro em tempo de compilação, atribuição de tipo errado
  //a = 'abc';

  //variável dinamicamente tipada só é checada em tempo de execução
  dynamic b = 2;
  print(b.runtimeType);
  //erro somente em tempo de execução
  //b.indexOf("2");
  b = "abc";
  print(b.runtimeType);
  //o método agora funciona pois b é string
  print(b.indexOf("b"));

  //inferência de tipos
  var nome = "João";
  print(nome.runtimeType);
  //uma vez que o tipo é inferido, ele não muda mais
  //dá erro em tempo de compilação
  //nome = 2;
  //a inferência existe para qualquer tipo
  var idade = 25;
  print(idade.runtimeType);
  var salario = 2532.5;
  print(salario.runtimeType);
  var vaiChover = true;
  print(vaiChover.runtimeType);
}