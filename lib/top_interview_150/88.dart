void main() {
  var nums1 = [1, 2, 3, 0, 0, 0];
  int m = 3;
  var nums2 = [2, 5, 6];
  int n = 3;

  List<int> nums1Temp =
      nums1.length > m ? (nums1..removeRange(m, nums1.length)) : nums1;
  List<int> nums2Temp =
      nums2.length > n ? (nums2..removeRange(n, nums2.length)) : nums2;

  nums1 = nums1Temp
    ..addAll(nums2Temp)
    ..sort();
  print('result: $nums1');
}
