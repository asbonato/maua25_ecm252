void main(){
  //atribuição de tipo feita por inferência
  final nome = "João";
  print(nome);
  print(nome.runtimeType);
  final idade = 17;
  print(idade);
  print(idade.runtimeType);
  //se tentar mudar dá erro pois nome é constante
  //nome = 'Pedro';
  //posso declara o tipo se eu quiser
  final String endereco = 'Rua J';
  //posso não inicializar no momento da declaração
  final peso;
  //dá erro de compilação se ainda não tiver sido inicializada na hora de usar
  //print(peso);
  //também não tem tipo antes de inicializar
  //print(peso.runtimeType);

  //dá erro de compilação se não for inicializada
  //const outroNome;
  const outroNome = 'Ana';
  //pode declarar o tipo se quiser
  const String sobrenome = 'Silva';
  //vale para todos os tipos
  const int outraIdade = 19;
  const bool vaiEsfriar = false;
  const double outroPeso = 89.7;

  //também vale com interpolação de string se forem duas constantes
  //const nomeCompletoInterpolacao = '$nome $sobrenome';
  const nomeCompletoInterpolacao = '$outroNome $sobrenome';

  //vale com concatenação
  const nomeCompletoConcat = '$outroNome $sobrenome';

  //dá erro, pois o compilador não chama métodos
  //const maiusculas = outroNome.toUpperCase();

  //mas o compilador faz continhas
  const soma = 2 + 2;

  const n1 = 2, n2 = 3;
  const n3 = n1 + n2;

  //não deixa pois var somente é conhecido em tempo de execução
  var n4 = 2;
  //const n5 = n4 + 2;

  //não deixa pois a variável não precisa ser inicializada no momento da declaração
  int n6 = 2;
  //const n6 = n6 + 2;

  //com final também não dá pois não precisa ser inicializada no momento da declaração
  final n7 = 5;
  //const n8 = n7 * 2;
  

}