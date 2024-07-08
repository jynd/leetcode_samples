void main() {
  // var s = "A man, a plan, a canal: Panama";
  var s = "race a car";
  print(isPalindrome(s));
}

bool isPalindrome(String s) {
  s = s.toLowerCase().replaceAll(RegExp('[^A-Za-z0-9]'), '');
  String temp = s.split('').reversed.join('');

  return temp == s;
}