class SolutionIsPalendrom {

    // solved in 15 minutes

    fun isPalindrome(x: Int): Boolean {
        val string = x.toString()
        val list = mutableListOf<String>()
        var result = false
        for (i in string) {
            list += i.toString()
        }
        result = list == list.reversed()
        return result
    }
}