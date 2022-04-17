class DelimetersCalculator {
  int a;
  int b;

  DelimetersCalculator(this.a, this.b);

  // НОД
  int getNod() {
    return _nod(a, b);
  }

  // НОК
  int nok() {
    return a * b ~/ _nod(a, b);
  }

  // print nod/nok result
  void sampleNodNok() {
    print("$a, $b\t| \t${getNod()} | ${nok()}");
  }

  int _nod(a, b) {
    return b == 0 ? a : _nod(b, a % b);
  }
}
void main() {
  print("ЗАДАЧА 1.");
  print("\t\t| НОД | НОК");
  var dc1 = DelimetersCalculator(12, 8);
  var dc2 = DelimetersCalculator(8, 12);
  var dc3 = DelimetersCalculator(2, 3);
  var dc4 = DelimetersCalculator(0, 1);
  dc1.sampleNodNok();
  dc2.sampleNodNok();
  dc3.sampleNodNok();
  dc4.sampleNodNok();
  print('');
}