package kotlinTasks.easy

fun isValid(s: String): Boolean {
    if (s.isEmpty()) return true
    val simplify = s.replace("()", "").replace("{}", "").replace("[]", "")
    if (simplify == s) return false
    return isValid(simplify)
}