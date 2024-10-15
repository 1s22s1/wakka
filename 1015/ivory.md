## Pattern1

```console
6
1 2 3 1 2 3
```



```console
8
1 2 3 1 2 3 1 2
```

```julia
function outcome()
    n = parseint()
    an = parseints()

    arr = []

    i = 1
    while i < n + 1
        j = i

        while j < n && an[j] ≤ an[j+1]
            j += 1
        end
        @show i, j

        push!(arr, (an[i], j - i + 1))
        i = j+1
    end

    @show arr

end
```
