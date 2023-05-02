package kotlinTasks.easy

class RemoveElement {
    fun removeElement(nums: IntArray, `val`: Int): Int {
        var counter = 0
        nums.forEach { if (it != `val`) nums[counter++] = it }
        return counter
    }
}