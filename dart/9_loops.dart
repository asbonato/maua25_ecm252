void main() {
  //for canônico
  for (int i = 0; i < 10; i++){
    print(i);
  }
  // iterar em listas
  const nomes = ['Pedro', 'Maria', 'João'];
  for (final nome in nomes){
    print(nome);
  }

  // as 3 regiões do for são opcionais
  var j = 0;
  for(;;){
        j++;
    print('o loop seria infinito sem o break '+ j.toString());
    if (j > 10)
      break; //posso sair do for com um break
    if (j % 2 == 0){
      continue;
    }
    print('j é ímpar');
  }
  //loop com while
  int contador = 0;
  while (contador <= 10){
    print('Contador: $contador');
    contador++;
  }
  //loop com do/while
  int i = 100;
  do {
    print("O valor de i é $i");
    i++;
  } while (i < 10);
}
