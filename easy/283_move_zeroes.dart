class Solution {
  void moveZeroes(List<int> nums) {
    int insertPos = 0;

    // déplacer les éléments non-zéro vers l'avant
    for (int num in nums) {
      if (num != 0) {
        nums[insertPos] = num;
        insertPos++;
      }
    }

    // remplir le reste avec des zéros
    while (insertPos < nums.length) {
      nums[insertPos] = 0;
      insertPos++;
    }
  }
}
