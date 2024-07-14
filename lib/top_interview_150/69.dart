import 'dart:math';

void main() {
  print('output: ${mySqrt(4)}');
  print('output: ${mySqrt(1)}');
  print('output: ${mySqrt(8)}');
}

int mySqrt(int x) {
  int result = x ~/ 2;
  if (result == 0) return x;

  if (result * result == x) return result;

  while (result * result > x) {
    result = ((result + x / result) / 2).floor();
  }

  return result.floor();
}

int mySqrt2(int x) {
 return sqrt(x).floor();
}
