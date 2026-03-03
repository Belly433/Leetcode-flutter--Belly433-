class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    Map<int, int> count = {};
    List<int> result = [];

    // Compter les occurrences dans nums1
    for (int num in nums1) {
      count[num] = (count[num] ?? 0) + 1;
    }

    // Vérifier dans nums2
    for (int num in nums2) {
      if ((count[num] ?? 0) > 0) {
        result.add(num);
        count[num] = count[num]! - 1;
      }
    }

    return result;
  }
}
