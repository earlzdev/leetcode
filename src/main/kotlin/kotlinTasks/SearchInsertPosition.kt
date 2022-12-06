
class SearchInsertPosition {
    fun searchInsert(nums: IntArray, target: Int): Int {
        var result = 0
        var position = 0
        var answer = 0
        nums.toMutableList().find{ it == target }.apply {
            result = nums.toMutableList().indexOf(this) ?: 0
        }
        if (result == -1) {
            for (num in nums) {
                if (num < target) {
                    position++
                }
            }
        }
        answer = if(result == -1) position else result
        return answer
    }
}