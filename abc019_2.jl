parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function outcome()
    s = parsestring()

    arr = []

    i = 1
    while i < length(s)+1
        j = i

        while j < length(s)+1 && s[i] == s[j]
            j += 1
        end

        push!(arr, (s[i], j-i))
        i = j
    end

    for (c, n) ∈ arr
        print(c*string(n))
    end

    println("")
end

outcome()
