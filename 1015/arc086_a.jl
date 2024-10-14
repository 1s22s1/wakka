parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function solve()
    _, k = parseints()
    an = parseints()

    dict = Dict()

    for a ∈ an
        dict[a] = get(dict, a, 0) + 1
    end

    if length(dict) ≤ k
        println(0)
    else
        sorted_dict = sort(collect(dict), by = x -> x[2])

        println(map(x -> x[2], sorted_dict[1:length(dict) - k]) |> sum)
    end
end

solve()
