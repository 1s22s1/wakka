parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function solve()
    n = parseint()

    dict = Dict()
    for _ ∈ 1:n
        s = parsestring()

        dict[s] = get(dict, s, 0) + 1
    end

    filtered_dict = filter(x-> x[2] == maximum(values(dict)), dict)
    names = filtered_dict |> keys |> collect |> sort

    for name ∈ names
        println(name)
    end
end

solve()
