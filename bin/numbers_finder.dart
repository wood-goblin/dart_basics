class NumberFinder {
  String str;

  NumberFinder(this.str);

  static const numMap = {
    'zero':   0,
    'one':    1,
    'two':    2,
    'three':  3,
    'four':   4,
    'five':   5,
    'six':    6,
    'seven':  7,
    'eight':  8,
    'nine':   9,
  };

  // находит числа в строке
  List findNums() {
    List<num?> numbers = [];
    str.split('').forEach((var s) {
      if (num.tryParse(s) != null) {
        numbers.add(num.tryParse(s));
      }
    });
    return numbers;
  }

  // находит числа в строке в ввиде слов
  List numbersInSentense() {
    var set = [];
    for(String? word in str.split(' ')){
      if (numMap.keys.contains(word)) {
        set.add(numMap[word]);
      }
    }
    return set;
  }

}

void main() {
  var sentence = "qwe1 a3sd one qwe five 2 nine five zero";
  var finder = NumberFinder(sentence);
  print("ЗАДАЧА 3. Найти числа в строке");
  print("Numbers in '$finder.str': ${finder.findNums()}");
  print('');

  print("ЗАДАЧА 5. Найти все цифры (ввиде слов) в предложении.");
  print("$finder.str: ${finder.numbersInSentense()}");
}

