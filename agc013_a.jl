parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function outcome()
    n = parseint()
    an = parseints()

    arr = []

    i = 1
    while i < n + 1
        j = i

        k_up = k_down = j

        while k_up < n && an[k_up] ≤ an[k_up+1]
            k_up += 1
        end

        while k_down < n && an[k_down] ≥ an[k_down+1]
            k_down += 1
        end

        j = max(k_up, k_down)

        push!(arr, (an[i], j - i + 1))
        i = j + 1
    end

    println(length(arr))
end

outcome()
