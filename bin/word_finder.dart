class WordFinder {
  List<String> keys;

  WordFinder(this.keys);

  Map? wordsInSentense() {
    Map map = {};
    for (String key in keys) {
      map[key] = map.containsKey(key) ? ++map[key] : 1;
    }
    return map;
  }
}

void main() {
  print("ЗАДАЧА 4. Количество его вхождений в данную коллекцию.");

  List<String> list = ['qwe', 'asd', 'qwe', '', 'asd'];
  print("$list: ${WordFinder(list).wordsInSentense()}");
}