void main() {
  var words = ["This", "is", "an", "example", "of", "text", "justification."];
  int maxWidth = 16;

  print(fullJustify(words, maxWidth));
}

List<String> fullJustify(List<String> words, int maxWidth) {
  List<String> result = [];
  int addCount =0;

  if (result.isEmpty) {
    result.add(words.first);
    addCount++;
  }
  for (int i = 1; i <= words.length - 1; i++) {
    int lengthWord = words[i].length;

    for (int j = addCount - 1; j <= result.length - 1; j++) {
      int lengthResultItem = result[j].length;

      if (lengthResultItem + lengthWord<= maxWidth) {
        result[j] = result[j] + ' ' + words[i];
      } else {
        result.add(words[i]);
        addCount++;
        break;
      }
    }
  }
  return result;
}
