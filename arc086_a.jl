parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function solve()
    n, k = parseints()
    an = parseints()

    dict = Dict()

    for a ∈ an
        dict[a] = get(dict, a, 0) + 1
    end

    sorted_dict = sort(collect(dict), by = x -> x[2])
    dict = nothing

    if length(sorted_dict) ≤ k
        println(0)
    else
        kinds = length(sorted_dict) - k

        outcome = 0

        for i ∈ 1:kinds
            outcome += sorted_dict[i][2]
        end

        println(outcome)
    end
end

solve()
