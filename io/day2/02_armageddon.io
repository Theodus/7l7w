// How would you change / to return 0 if the denominator is zero?

origDiv := Number getSlot("/")

(10 / 0) println

Number / := method(i, 
    if(i != 0, self origDiv(i), 0)
)

(10 / 0) println
