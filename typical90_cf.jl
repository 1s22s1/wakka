parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function rle(s)
    arr = []

    i = 1
    while i < length(s) + 1
        j = i

        while j < length(s) + 1 && s[i] == s[j]
            j += 1
        end

        push!(arr, (s[i], j - i))
        i = j
    end

    return arr
end

function outcome()
    n = parseint()
    s = parsestring()

    arr = rle(s)

    outcome = n * (n - 1) ÷ 2

    for elem ∈ arr
        outcome -= elem[2] * (elem[2] - 1) ÷ 2
    end

    println(outcome)
end

outcome()
