/*
A Fibonacci sequence starts with two 1s. Each subsequent number
is the sum of the two numbers that came before: 1, 1, 2, 3,
5, 8, 13, 21, and so on. Write a program to find the nth Fibonacci
number. fib(1) is 1, and fib(4) is 3. As a bonus, solve the problem
with recursion and with loops.
*/

fibIter := method(n,
    a := 0
    b := 1
    for(i, 0, n, 
        temp := a
        a = b
        b = temp + b
    )
    return a
)

for(i, 0, 7,
    fibIter(i) print
    if(i < 7, ", " print, "" println)
)

fibRec := method(n,
    if(n == 0, return 0)
    if(n == 1, return 1)
    return fibRec(n-1) + fibRec(n-2)
)

for(i, 0, 7,
    fibRec(i+1) print
    if(i < 7, ", " print, "" println)
)
