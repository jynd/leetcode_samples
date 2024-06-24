void main() {
  String s = "  a good   example  ";

  method1(s);
  method2(s);
}

void method2(String s) {
  List<String> words = s.trim().split(' ');

  print('111: ${words.where((element) => element.isNotEmpty).toList().reversed.join(' ')}');
}

void method1(String s) {
  List<String> words = s.trim().split(RegExp(r'\s+'));

  print(words.reversed.join(' '));
}