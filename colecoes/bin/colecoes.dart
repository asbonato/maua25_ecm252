import 'package:colecoes/colecoes.dart' as colecoes;

void main(List<String> arguments) {
List<String> nomes = ['Ana', 'Pedro'];
print(nomes.runtimeType);
List<int> idades = [17, 22];
print(idades.runtimeType);
List<bool> ehMaior = [false, true];
print(ehMaior.runtimeType);

//podemos ter listas de listas
var listas = [nomes, idades, ehMaior];
print(listas.runtimeType);

List lista = [];
lista.add(true);
lista.add('Ana');
print(lista.runtimeType);
print(lista);

//posso também usar type annotation
//List<Object>
var qualquerCoisa = [1, true, 'Ana'];
//somente strings
var somenteStrings = <String> ['Ana', 'Pedro'];
print(qualquerCoisa.runtimeType);
print(somenteStrings.runtimeType);

  // var nomes = ['Ana', 'João', 'Maria'];
  // //adiciona na última posição
  // nomes.add('Cristina');
  // print(nomes);
  // //insere na posição 0
  // nomes.insert(0,'Ana Maria');
  // print(nomes);
  // //insere na posição 5
  // print(nomes.length);
  // nomes.insert(5, 'Vagner');
  // print(nomes);
  // print(nomes.length);
  // //nomes.insert(7, 'Antonio'); //dá RangeError

  // //o método contains diz se a lista tem um determinado elemento
  // print(nomes.contains('Ana'));
  // print(nomes.contains('ANA'));
  // print(nomes.contains('Pedro'));


  // var nomes = ['Ana', 'João', 'Maria'];
  // //ver se a lista está vazia
  // print(nomes.isEmpty);
  // //ver se a lista não está vazia
  // print(nomes.isNotEmpty);
  // //devolve um Iterable<String> contendo os elementos na ordem reversa
  // //não altera a lista atual
  // print(nomes.reversed);
  // //retorna o primeiro elemento de uma lista
  // //se estiver vazia, retorna erro
  // print(nomes.first);
  // //retorna o primeiro elemento de uma lista sem dar erro
  // List<String> nomes2 = [];
  // print(nomes2.firstOrNull);
  // //o mesmo vale para o último
  // print(nomes.last);
  // print(nomes2.lastOrNull);

  // //soma os elementos recebidos como parâmetro
  // int res = 0;
  // for(final arg in arguments){
  //   res += int.parse(arg);
  // }
  // print(res);

  // var nomes = ['João', 'Pedro', 'Maria'];
  // print(nomes);
  // print(nomes.toString());
  // print(nomes.runtimeType);
  // print(nomes[0]);
  // print(nomes[1]);
  // //print(nomes[-1]); //RangeError
  // //print(nomes[3]); //RangeError
  // nomes[0] = 'José';
  // print(nomes);
  // //iteracao com for comun
  // for (int i = 0; i < nomes.length; i++){
  //   print(nomes[i]);
  // }
  // //iteração com for each
  // for(final nome in nomes){
  //   print(nome);
  // }
  // //nomes[0] = 1; //erro pois a lista é de strings
  // //criando uma lista de Object
  // var itensDiversos = ['Ana', true, 2, 2.5];
  // print(itensDiversos);
  // print(itensDiversos.runtimeType);
  // //agora posso alterar para qq tipo
  // itensDiversos[0] = false;
  // print(itensDiversos);
}
