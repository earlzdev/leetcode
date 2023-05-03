package kotlinTasks.easy

class LengthOfLastWord {
    fun lengthOfLastWord(s: String): Int {
        val size = s.trim().split(" ").last().toList().size
        val num = 100
        val arr = num.toString().chunked(1).map { it.toInt() }.toIntArray()
        return size
    }
}