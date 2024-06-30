void main() {
  List<List<int>> matrix =
    [[1,2,3], //[[7,4,1], 721 741
    [4,5,6],  //[8,5,2], 456 852
    [7,8,9]]; //[9,6,3]] 983 963

  method2(matrix);
}

void method2(List<List<int>>matrix) {
  int left = 0;
  int right = matrix.length - 1;
  int top = 0;
  int bottom = matrix.length - 1;

  while (top < bottom) {
    for (int i = 0; i < right - left; i++) {
      int tmp = matrix[bottom - i][left];
      int tmp2 = matrix[bottom][right - i];
      int tmp3 = matrix[top + i][right];
      int tmp4 = matrix[top][left + i];

      matrix[bottom - i][left] = tmp2;
      matrix[bottom][right - i] = tmp3;
      matrix[top + i][right] = tmp4;
      matrix[top][left + i] = tmp;
      print('matrix: $matrix');
    }
    left++;
    right--;
    top++;
    bottom--;
  }
}