package kotlinTasks.MergeTwoSortedLists_Easy_29.`10`

// domain

interface ProductDomain {

    fun <T> map(mapper: DomainToUiMapper<T>) : T

    class Base(
        private val id: String
    ) : ProductDomain {
        override fun <T> map(mapper: DomainToUiMapper<T>) = mapper.map(id)
    }
}

interface DomainToUiMapper<T> {

    fun map(
        id: String
    ) : T
}

interface Mapper<T, V> {

    fun map(data: T) : V
}

// ui
interface ProductUi {

    class Base(
        private val id: String
    ) : ProductUi
}

