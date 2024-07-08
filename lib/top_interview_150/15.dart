void main() {
  var nums = [3,0,-2,-1,1,2];

  print('Output: ${threeSum(nums)}');
}

List<List<int>> threeSum(List<int> nums) {
  List<List<int>> result = [];

  for (int i = 0; i < nums.length; i++) {
    var nums1 = nums;
    print('nums1: $nums1');
    for (int j = 1; j < nums1.length; j++) {
    var nums2 = nums1;
    print('nums2: $nums2');
      for(int k = 2; k < nums2.length; k++) {
        if (nums[i] + nums1[j] + nums2[k] == 0) {
          result.add([nums[i], nums1[j], nums2[k]]);

          nums1.remove(nums[i]);
          nums2.remove(nums[j]);
        }
      }
    }
  }

  List<String> temp =
      result.map((e) => '${e..sort()}').toList().toSet().toList();

  return List<List<int>>.from(temp
      .map((e) => e
          .replaceAll('[', '')
          .replaceAll(']', '')
          .split(',')
          .map((e) => int.parse(e))
          .toList())
      .toList());
}
