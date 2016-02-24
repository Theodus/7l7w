/*
Add a slot called myAverage to a list that computes the average of
all the numbers in a list. What happens if there are no numbers
in a list? (Bonus: Raise an Io exception if any item in the list is not
a number.)
*/

l := list(1, 2, 3, 4, 5, 6)

myAverage := method(l,
    s := 0
    l foreach(i, v, s = s + v)
    return s / (l size)
)

myAverage(l) println
