parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function outcome()
    n = parseint()
    hn = parseints()

    outcome = 0

    i = 1
    while i < n + 1
        j = i

        while j < n && hn[j] ≥ hn[j+1]
            j += 1
        end

        outcome = max(outcome, j - i)
        i = j + 1
    end

    println(outcome)
end

outcome()
