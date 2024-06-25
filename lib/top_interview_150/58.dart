void main() {
  String s = "a good   example   ";

  List<String> strSplit = s.replaceAll(' ', ',').split(',')..removeWhere((element) => element == '');

  print('strSplit: ${strSplit.last.length}');
}