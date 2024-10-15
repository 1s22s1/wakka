parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function outcome()
    n = parseint()
    hn = parseints()

    outcome = 0

    for height ∈ 1:maximum(hn)
        # for height ∈ 3:3
        i = 1

        while i < n + 1
            while i < n + 1 && hn[i] < height
                i += 1
            end

            j = i
            while j < n + 1 && hn[j] ≥ height
                j += 1
            end

            # @show i, j

            if i ≠ j
                outcome += 1
            end

            i = j + 1
        end
    end

    println(outcome)
end

outcome()
