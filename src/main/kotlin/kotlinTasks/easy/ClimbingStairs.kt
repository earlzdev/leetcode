package kotlinTasks.easy

class ClimbingStairs {
    fun climbStairs(n: Int): Int {
        var a = 0
        var b = 1
        repeat(n) {
            val temp = a
            a = b
            b += temp
        }
        return b
    }
}