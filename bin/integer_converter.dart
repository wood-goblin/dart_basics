class IntegerConverter {
  int num;

  IntegerConverter(this.num);

  String toBinary() {
    var binaryStr = [];
    while (num > 0) {
      binaryStr.add(num % 2);
      num = num ~/ 2;
    }
    return binaryStr.reversed.join();
  }
}

void main() {
  print("ЗАДАЧА 2. Целое в двоичное");
  print("17 -> " + IntegerConverter(17).toBinary());
  print("10 -> " + IntegerConverter(10).toBinary());
}
