class Solution {
  int maximumProduct(List<int> nums) {
    nums.sort();

    int n = nums.length;

    int product1 = nums[n - 1] * nums[n - 2] * nums[n - 3];
    int product2 = nums[0] * nums[1] * nums[n - 1];

    return product1 > product2 ? product1 : product2;
  }
}
