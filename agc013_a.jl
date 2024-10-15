parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function outcome()
    n = parseint()
    an = parseints()

    outcome = 0

    i = 1
    while i < length(s)+1
        j = i

        # while j < length(s)+1 && s[i] == s[j]
        #     j += 1
        # end

        k_up = k_down = j

        push!(arr, (s[i], j-i))
        i = j
    end

    println(outcome)
end

outcome()
