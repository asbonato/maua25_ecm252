void main() {
  bool vaiChover = true;
  String levarGuardaChuva = vaiChover ? "SIM" : "NÃO";
  print('Levar guarda chuva? $levarGuardaChuva');
  vaiChover = false;
  levarGuardaChuva = vaiChover ? "SIM" : "NÃO";
  print('Levar guarda chuva? $levarGuardaChuva');
}