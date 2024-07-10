import 'package:collection/collection.dart';

void main() {
  print('Output: ${threeSum2([3, 0, -2, -1, 1, 2])}');
}

/// passs 308/313 test cases on leetcode because time out exception
List<List<int>> threeSum(List<int> nums) {
  List<List<int>> result = [];
  Function listEquality = const ListEquality().equals;

  for (int i = 0; i < nums.length - 2; i++) {
    for (int j = i + 1; j < nums.length - 1; j++) {
      for (int k = j + 1; k < nums.length; k++) {
        if (nums[i] + nums[j] + nums[k] == 0) {
          List<int> temp = [nums[i], nums[j], nums[k]]..sort();

          if (!result.any((list) => listEquality(list, temp))) {
            result.add(temp);
          }
        }
      }
    }
  }

  return result;
}

/// better solution
List<List<int>> threeSum2(List<int> nums) {
  nums.sort();
  List<List<int>> result = [];

  for (int i = 0; i < nums.length - 2; i++) {
    if (nums[i] > 0) break;
    if (i > 0 && nums[i] == nums[i - 1]) continue;

    int left = i + 1;
    int right = nums.length - 1;

    while (left < right) {
      int sum = nums[i] + nums[left] + nums[right];

      if (sum == 0) {
        result.add([nums[i], nums[left], nums[right]]);
        while (left < right && nums[left] == nums[left + 1]) left++;
        while (left < right && nums[right] == nums[right - 1]) right--;
        left++;
        right--;
      } else if (sum < 0) {
        left++;
      } else {
        right--;
      }
    }
  }

  return result;
}
