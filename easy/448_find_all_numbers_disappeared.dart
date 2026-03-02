class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    Set<int> setNums = nums.toSet();
    List<int> result = [];

    for (int i = 1; i <= nums.length; i++) {
      if (!setNums.contains(i)) {
        result.add(i);
      }
    }

    return result;
  }
}
