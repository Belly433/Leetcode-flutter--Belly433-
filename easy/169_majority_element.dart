class Solution {
  int majorityElement(List<int> nums) {
    int count = 0;
    int candidate = 0;

    for (int num in nums) {
      if (count == 0) {
        candidate = num;
      }

      if (num == candidate) {
        count++;
      } else {
        count--;
      }
    }

    return candidate;
  }
}
