class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {

    Map<String, List<String>> map = {};

    for (String word in strs) {

      List<String> chars = word.split('');
      chars.sort();

      String key = chars.join();

      if (!map.containsKey(key)) {
        map[key] = [];
      }

      map[key]!.add(word);
    }

    return map.values.toList();
  }
}