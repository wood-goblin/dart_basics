extension on num {
  // вспомогательная функция возведения в степень
  num pow(int degree) {
    num result = this;
    for(var i = 1; i < degree; i++) {
      result *= this;
    }
    return result;
  }

  // нельзя вычислить корень четной степени для отрицательного числа
  void sqrtDegreeException() {
    throw Exception("Even degree for negative number doesn't exist.");
  }

  num sqrt(int degree) {
    if (this < 0 && degree % 2 == 0) {
      sqrtDegreeException();
    }
    var previous = this; // текущее значение
    var current = this / 2; // начальное (и последующие) предположение результата
    var precision = 0.1; // погрешность
    var i = 0; // iteration number
    while ((current - previous).abs() > precision) {
      i++;
      var tmp = current;
      current = ((degree - 1) * previous + this / (previous.pow(degree - 1))) / degree;
      previous = tmp;
      // print("iteration $i, previous = $previous; current = $current");
    }
    print("$this.sqrt($degree) = $current; (precision: $precision, iterations: $i)");
    return current;
  }
}

void main() {
  print("ЗАДАЧА 7. Корень любой заданной степени из числа.");
  // print(3.pow(3));
  16.sqrt(2);
  27.sqrt(3);
  1000.sqrt(13);
  (-16).sqrt(2); // generate error
}
