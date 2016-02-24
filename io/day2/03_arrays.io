// Write a program to add up all of the numbers in a two-dimensional array.

a := list(list(1, 2, 3, 4), list(3, 4, 5, 6))

add := method(a,
    tot := 0
    a foreach(ind, val,
        val foreach(i, v, tot = tot + v)
    )
)

add(a) println
