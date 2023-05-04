package kotlinTasks.easy

class AddBinary {
    fun addBinary(a: String, b: String) =
        (a.toBigInteger(2) + b.toBigInteger(2)).toString(2)
}