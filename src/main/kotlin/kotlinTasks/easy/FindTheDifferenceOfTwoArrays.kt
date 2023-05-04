package kotlinTasks.easy

class FindTheDifferenceOfTwoArrays {
    fun findDifference(nums1: IntArray, nums2: IntArray): List<List<Int>> {
        val readyList1 = mutableListOf<Int>()
        val readyList2 = mutableListOf<Int>()
        nums1.forEach { num ->
            val foundNum = nums2.find { it == num }
            if (foundNum == null) {
                readyList1.add(num)
            }
        }
        nums2.forEach { num ->
            val foundNum = nums1.find { it == num }
            if (foundNum == null) {
                readyList2.add(num)
            }
        }
        val readyList = mutableListOf(readyList1.toSet().toList(), readyList2.toSet().toList())
        return readyList
    }
}