void main() {
  var words = ["What","must","be","acknowledgment","shall","be"];
  int maxWidth = 16;

  /// copilot fixed this code
  print(fullJustify(words, maxWidth));
}

List<String> fullJustify(List<String> words, int maxWidth) {
  List<String> result = [];
  int i = 0;

  while (i < words.length) {
    int j = i + 1;
    int lineLength = words[i].length;

    while (j < words.length && lineLength + words[j].length + (j - i) <= maxWidth) {
      lineLength += words[j].length;
      j++;
    }

    int diff = maxWidth - lineLength;
    int numberOfWords = j - i;

    if (numberOfWords == 1 || j >= words.length) {
      String line = words[i];
      for (int k = i + 1; k < j; k++) {
        line += ' ' + words[k];
      }
      line += ' ' * (maxWidth - line.length);
      result.add(line);
    } else {
      int spaces = diff ~/ (numberOfWords - 1);
      int extraSpaces = diff % (numberOfWords - 1);

      String line = words[i];
      for (int k = i + 1; k < j; k++) {
        line += ' ' * (spaces + (k - i <= extraSpaces ? 1 : 0)) + words[k];
      }
      result.add(line);
    }

    i = j;
  }

  return result;
}