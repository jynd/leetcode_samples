void main() {
  print('output: ${isPalindrome(121)}');
  print('output: ${isPalindrome(15522551)}');
  print('output: ${isPalindrome(-15522551)}');
}

bool isPalindrome(int x) {
  if (x < 0) return false;

  String xReversed = x.toString().split('').reversed.join();

  return x == int.parse(xReversed);
}