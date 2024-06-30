void main() {
  var matrix = [
    [1, 2, 3, 4],
    [5, 6, 7, 8],
    [9, 10, 11, 12]
  ];
  // var matrix = [
  // [1,2,3,4,5],
  // [6,7,8,9,10],
  // [11,12,13,14,15],
  // [16,17,18,19,20],
  // [21,22,23,24,25],
  // ];

  print('result: ${spiralOrder(matrix)}');
}

List<int> spiralOrder(List<List<int>> matrix) {
  List<int> result = [];

  int firstRow = 0;
  int lastRow = matrix.length - 1;
  int firstColumn = 0;
  int lastColumn = matrix.first.length - 1;

  while (firstColumn <= lastColumn && firstRow <= lastRow) {
    for (int i = firstColumn; i <= lastColumn; i++) {
      result.add(matrix[firstColumn][i]);
    }

    ++firstRow;

    for (int i = firstRow; i <= lastRow; i++) {
      result.add(matrix[i][lastColumn]);
    }

    --lastColumn;

    if (firstRow <= lastRow) {
      for (int i = lastColumn; i >= firstColumn; i--) {
        result.add(matrix[lastRow][i]);
      }
    }
    --lastRow;

    if (firstColumn <= lastColumn) {
      for (int i = lastRow; i >= firstRow; i--) {
        result.add(matrix[i][firstColumn]);
      }
    }
    ++firstColumn;
  }

  return result;
}

