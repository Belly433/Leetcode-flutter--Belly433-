class Solution {
  List<int> topKFrequent(List<int> nums, int k) {

    Map<int, int> freq = {};

    for (int num in nums) {
      freq[num] = (freq[num] ?? 0) + 1;
    }

    List<int> keys = freq.keys.toList();

    keys.sort((a, b) => freq[b]!.compareTo(freq[a]!));

    return keys.sublist(0, k);
  }
}