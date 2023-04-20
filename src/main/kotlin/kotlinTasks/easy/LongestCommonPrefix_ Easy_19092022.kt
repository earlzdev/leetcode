class SolutionLongestPrefix {
        fun longestCommonPrefix(strs: Array<String>): String {

            if (strs.isEmpty()) return ""
            if (strs.size == 1) return strs[0]
            var prefixBuilder = StringBuilder()

            for (i in strs[0].indices) {
                val char = strs[0][i]
                var isSameChar = true
                for (j in 1 until strs.size){
                    if (i >= strs[j].length || strs[j][i] != char) {
                        isSameChar = false
                        break
                    }
                }
                if (isSameChar)
                    prefixBuilder.append(char)
                else
                    break
            }
            return prefixBuilder.toString()
        }
}