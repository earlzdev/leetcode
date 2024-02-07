package kotlinTasks.easy

class FindCommonCharacters {
    fun commonChars(words: Array<String>): List<String> {
        var initial = words.toList()
        val arr = mutableListOf<String>()
        val first = words[0]
        for (char in first) {
            val should = words.size - 1
            var count = 0
            val s = char.toString()
            for (i in 1 until words.size) {
                if (initial[i].contains(char)) {
                    count++
                }
            }
            if (count == should) {
                arr.add(s)
                val newArr = mutableListOf<String>()
                initial.map { s ->
                    val ind = s.indexOf(char)
                    val newS = s.removeRange(ind, ind + 1)
                    newArr.add(newS)
                }
                initial = newArr
            }
        }
        println(arr)
        return arr
    }
}

fun main() {
    FindCommonCharacters().commonChars(arrayOf("bella","label","roller"))
//    FindCommonCharacters().commonChars(arrayOf("cool","lock","cook"))
}
