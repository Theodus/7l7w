# JACL

- Staticly typed
- Small definition
- Concurrent
- Functional
- Simple (Rich Hickey Style)
- Performant

### Ideas ?
- Compiles to Go
- LLVM

### Features
- Type inference
- Error type
- Multiple assignment/return types
- Golang-like interface implementation (somewhat like ducktyping)

### Types
- int (infinite precision)
- float (64 bit)
- string ([]rune)
- rune (utf-8 rune)
- func (args) -> (rets)
- array [1, 2, 3]
- map {1: "a", 2: "b", 3: "c"}

### Examples

Hello World
```
main = () -> ():
    println("Hello, JACL!")
```
Functions
```
fac = (n int) -> (int):
    if n < 2:
        return 1
    return n * fac(n - 1)

main = () -> ():
    println(fac(7))
```
Data types
```
m1 = merge({"two": 2}, {"one": 1, "three": 3}) // => {"one": 1, "three": 3, "two": 2}
x = get(m1, "two") // => 2

a1 = [1, 2, 3]
a2 = append(a1, 4) // => [1, 2, 3, 4]
```

### TODO
- Concurrency model
