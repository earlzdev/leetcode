class SolutionRomanToInteger {

    fun romanToInt(s: String): Int {

        val alphMap = mapOf("I" to 1, "V" to 5, "X" to 10, "L" to 50, "C" to 100, "D" to 500, "M" to 1000)
        val list = s.toList()
        var nextInteger = 0
        var currentInteger = 0
        var result = 0
        var missingNumber = 0

        for (index in list.indices) {

            currentInteger = alphMap.getValue(list[index].toString())
            if (currentInteger == missingNumber) continue

            if (index < list.lastIndex) {

                nextInteger = alphMap.getValue(list.elementAt(index + 1).toString())

                if (currentInteger < nextInteger) {
                    result += nextInteger - currentInteger
                    missingNumber = nextInteger
                } else result += currentInteger
            } else if (index == list.lastIndex) result += alphMap.getValue(list.elementAt(list.lastIndex).toString())
        }
        return result
    }
}

