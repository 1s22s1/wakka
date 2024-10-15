parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function outcome()
    n = parseint()
    an = parseints()

    outcome = 0

    i = 1
    while i < n + 1
        j = i

        while j < n + 1 && an[i] == an[j]
            j += 1
        end

        outcome += (j - i) ÷ 2
        i = j
    end

    println(outcome)
end

outcome()
