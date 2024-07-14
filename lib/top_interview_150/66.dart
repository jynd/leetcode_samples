void main() {
  // print('output: ${plusOne([1, 2, 3])}');
  print('output: ${plusOne([9, 9, 9])}');
}

List<int> plusOne(List<int> digits) {
  for (int i = digits.length - 1; i >= 0; i--) {
    if (digits[i] < 9) {
      digits[i]++;
      return digits;
    } else {
      digits[i] = 0;
    }
  }
  digits.insert(0, 1);
  return digits;
}