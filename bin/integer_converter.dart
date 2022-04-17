import 'dart:math';

class IntegerConverter {
  IntegerConverter();

  // конвертация из десятичной системы в двоичную
  String toBinary(int num) {
    var binaryStr = [];
    while (num > 0) {
      binaryStr.add(num % 2);
      num = num ~/ 2;
    }
    return binaryStr.reversed.join();
  }

  // конвертация из двоичной системы в десятичную
  int toInt1(String binaryStr) {
    int num = 0; // десятичный результат
    var i = 1; // incremental binary degree (2, 4, 8, 16, 32, ...)
    for (String s in binaryStr.split('').reversed) {
      num += int.parse(s) * i;
      i *= 2;
    }
    return num;
  }
}

void main() {
  print("ЗАДАЧА 2.1: Целое в двоичное");
  print("17 -> " + IntegerConverter().toBinary(17));
  print("10 -> " + IntegerConverter().toBinary(10));
  print("13 -> " + IntegerConverter().toBinary(13));
  print('');

  print("ЗАДАЧА 2.2: Двоичное в целое");
  // 1 * 2^0 + 0 * 2^1 + 1 * 2^2 + 1 * 2^3 = 1 + 0 + 4 + 8 = 13
  print("10001 -> ${IntegerConverter().toInt1('10001')}");
  print("1010 -> ${IntegerConverter().toInt1('1010')}");
  print("1101 -> ${IntegerConverter().toInt1('1101')}");
}
