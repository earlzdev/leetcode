package kotlinTasks.easy

import java.math.BigInteger

class SignTheProductOfAnArray {

    fun arraySign(nums: IntArray): Int {
        val result: Int
        var product: BigInteger = 1.toBigInteger()
        nums.forEach { num ->
            product *= num.toBigInteger()
        }
        result = if (product > 0.toBigInteger()) {
            1
        } else if (product < 0.toBigInteger()) {
            -1
        } else {
            0
        }
        println(product)
        return result
    }

    private fun Int.toBigInteger(): BigInteger = BigInteger.valueOf(toLong())
}