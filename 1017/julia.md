# Using length() in the conditional expression for while is slow
## Step to reproduce

```julia
using BenchmarkTools

function rle1(str)
    i = 1
    n = length(str)

    while i < n + 1
        i += 1
    end
end

function rle2(str)
    i = 1

    while i < length(str) + 1
        i += 1
    end
end

str = 'A'^1000

println(@benchmark rle1(str))
println(@benchmark rle2(str))
```

Result is below.

```console
yuu@penguin:~/src/wakka$ julia measure.jl
Trial(1.497 μs)
Trial(1.492 ms)
```

## Expected behavior

rle1() and rle2() take the same amount of time.

## Actual behavior

rle2() is slower than rle1().

## System configuration

- Julia: 1.11.1
