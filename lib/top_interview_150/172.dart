void main() {
  print('output: ${trailingZeroes(3)}');
  print('output: ${trailingZeroes(5)}');
  print('output: ${trailingZeroes(10)}');
  print('output: ${trailingZeroes(15)}');
  print('output: ${trailingZeroes(20)}');
  print('output: ${trailingZeroes(25)}');
  print('output: ${trailingZeroes(30)}');
}

int trailingZeroes(int n) {
  int count = 0;
  while (n > 0) {
    n ~/= 5;
    count += n;
  }
  return count;
}

int trailingZeroes2(int n) {
  int count = 0;
  for (int i = 5; i <= n; i *= 5) {
    count += n ~/ i;
  }
  return count;
}

