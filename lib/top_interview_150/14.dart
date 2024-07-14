import 'dart:math';

void main() {
  print('output: ${longestCommonPrefix3(["flower", "flow", "flight"])}');
  // print('output: ${longestCommonPrefix2(["dog", "racecar", "car"])}');
}

String longestCommonPrefix(List<String> strs) {
  if (strs.isEmpty) return '';

  String prefix = strs[0];
  for (int i = 1; i < strs.length; i++) {
    while (strs[i].indexOf(prefix) != 0) {
      prefix = prefix.substring(0, prefix.length - 1);
      if (prefix.isEmpty) return '';
    }
  }

  return prefix;
}

String longestCommonPrefix2(List<String> strs) {
  String result = '';
  int maxLenghtPref = strs.map((e) => e.length).reduce(min);

  if (maxLenghtPref == 0) return '';

  for (int i = 0; i < maxLenghtPref; i++) {
    List<String> title = [];

    for (int j = 0; j < strs.length; j++) {
      title.add(strs[j][i]);
    }

    if (title.toSet().length == 1) {
      result += strs[0][i];
    } else {
      break;
    }
  }

  return result;
}

String longestCommonPrefix3(List<String> strs) {
  if (strs.isEmpty) return "";

  // Sort the array
  strs.sort();

  // Take the first and the last string
  String first = strs.first;
  String last = strs.last;

  // Compare characters of the first and last string
  int i = 0;
  while (i < first.length && i < last.length && first[i] == last[i]) {
    i++;
  }

  // The common prefix
  return first.substring(0,i);
}