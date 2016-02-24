/*
Write a prototype for a two-dimensional list. The dim(x, y) method
should allocate a list of y lists that are x elements long. set(x, y,
value) should set a value, and get(x, y) should return that value.
*/

MultiList := List clone;

MultiList dim := method(x, y,
    if(
        (self proto() type() == "List"),
        return(
            MultiList clone() dim(x, y)
        )
    )
    self setSize(x)
    for(i, 0, (x - 1), 1,
        self atPut(i,
            (list() setSize(y))
        )
    )
    return(self)
)

MultiList get := method(x, y,
    return(
        self at(x) at(y)
    )
)

MultiList set := method(x, y, value,
    self at(x) atPut(y, value)
    return(self)
)

matrix := MultiList dim(3, 3)

matrix set(0, 0, "A")
matrix set(1, 1, "B")
matrix set(2, 2, "C")

matrix println()
