class Solution {
  int thirdMax(List<int> nums) {
    Set<int> unique = nums.toSet();
    List<int> list = unique.toList();
    list.sort();

    if (list.length >= 3) {
      return list[list.length - 3];
    } else {
      return list.last;
    }
  }
}
