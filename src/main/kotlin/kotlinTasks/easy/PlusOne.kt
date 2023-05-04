package kotlinTasks.easy

import java.math.BigInteger

class PlusOne {
    fun plusOne(digits: IntArray): IntArray {
        var numString = ""
        for (i in digits) {
            numString += i.toString()
        }
        val num: BigInteger = BigInteger(numString) + BigInteger.valueOf(1)
        val array = num.toString().chunked(1).map { it.toInt() }.toIntArray()
        return array
    }
}