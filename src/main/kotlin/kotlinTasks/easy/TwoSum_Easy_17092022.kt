class SolutionTwoSum {

    fun twoSum(nums: IntArray, target: Int): IntArray {

        var result = intArrayOf()
        var flag = false

        loop@ for (i in nums) {
            if (flag) break@loop
            loops@ for (j in nums.indexOf(i) + 1 until nums.size) {
                if (i + nums[j] == target) {
                    flag = true
                    result = intArrayOf(nums.indexOf(i), j)
                    break@loops
                }
            }
        }
        return result
    }
}