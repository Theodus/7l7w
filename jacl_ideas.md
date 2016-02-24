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
- Golang interface implementation (somewhat like ducktyping)

### Types
- int (infinite precision)
- float (64 bit)
- string ([]rune)
- rune (utf-8 rune)
- func (args) -> (rets)
- list [1, 2, 3]
- map {a: "a", b: "b", c: 3}

### Examples
```
main = () -> ():
    println("Hello JACL!")
```
```
fac = (n int) -> (int):
    if n < 2:
        return 1
    return n * fac(n - 1)
```
```
plus = (a int, b int) -> (int):
    return a + b
```
```
vals = () -> (int, int):
    return 3, 7
main = () -> ():
    println(vals())
```
