parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function outcome()
    n = parseint()
    s = parsestring()

    outcome = n * (n - 1) ÷ 2

    i = 1
    while i < n + 1
        j = i

        while j < n + 1 && s[i] == s[j]
            j += 1
        end

        outcome -= (j - i) * (j - i - 1) ÷ 2
        i = j
    end

    println(outcome)
end

outcome()
