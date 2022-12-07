package kotlinTasks

class ValidParentheses {
    fun isValid(s: String): Boolean {
        var answer: Boolean
        val list = s.toMutableList()
        val size = list.size
        answer = if (list.last().toString() == "}" && list[size-2].toString() == "{") {
            true
        } else if (list.last().toString() == "]" && list[size-2].toString() == "[") {
            true
        } else list.last().toString() == ")" && list[size-2].toString() == "("
        return answer
    }
}