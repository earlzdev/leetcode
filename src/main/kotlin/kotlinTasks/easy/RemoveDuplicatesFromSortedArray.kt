package kotlinTasks.easy

class RemoveDuplicatesFromSortedArray {
    fun removeDuplicates(nums: IntArray): Int {
        val uniq = nums.toSet().size
        var lastInt: Int = -1000
        var lastIndex = 0
        nums.forEach {
            if (it != lastInt) {
                nums[lastIndex] = it
                lastIndex++
            }
            lastInt = it
        }
        return uniq
    }
}