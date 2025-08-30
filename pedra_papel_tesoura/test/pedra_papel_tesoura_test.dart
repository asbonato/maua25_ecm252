import 'package:pedra_papel_tesoura/pedra_papel_tesoura.dart';
import 'package:test/test.dart';

void main() {
  test('decideResultado', () {
    expect(decideResultado(OPCAO.papel, OPCAO.papel), 'Empate');
  });
  test('decideResultadoComputador', () {
    expect(decideResultado(OPCAO.papel, OPCAO.tesoura), 'Computador venceu');
  });
  test('decideResultadoUsuario', () {
    expect(decideResultado(OPCAO.papel, OPCAO.pedra), 'Você venceu');
  });
}
