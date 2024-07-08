void main() {
  print(rob([1, 2, 3, 1])); // Output: 4
  print(rob2([2, 7, 9, 3, 1])); // Output: 12
}

int rob(List<int> nums) {
  if (nums.isEmpty) return 0;
  if (nums.length == 1) return nums.first;

  int previous1 = 0;
  int previous2 = 0;

  for (int i in nums) {
    int temp = previous1;

    previous1 = (previous2 + i > previous1) ? previous2 + i : previous1;
    previous2 = temp;
  }

  return previous1;
}

int rob2(List<int> nums) {
  if (nums.isEmpty) return 0;
  if (nums.length == 1) return nums[0];

  int prevNoRob = 0; // Số tiền tối đa có thể trộm được mà không trộm ngôi nhà liền kề
  int prevRob = 0; // Số tiền tối đa có thể trộm được khi trộm ngôi nhà hiện tại

  for (int num in nums) {
    int currentRob = prevNoRob + num; // Số tiền khi trộm ngôi nhà hiện tại
    prevNoRob = (prevRob > prevNoRob) ? prevRob : prevNoRob; // Cập nhật số tiền tối đa mà không trộm ngôi nhà hiện tại
    prevRob = currentRob; // Cập nhật số tiền tối đa khi trộm ngôi nhà hiện tại
  }

  return (prevRob > prevNoRob) ? prevRob : prevNoRob; // Trả về số tiền lớn nhất giữa hai lựa chọn cuối cùng
}