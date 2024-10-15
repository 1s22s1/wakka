parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function solve()
    n = parseint()

    dict_arr = []
    for _ ∈ 1:n
        dict = Dict()

        s = parsestring()
        for c ∈ s
            dict[c] = get(dict, c, 0) + 1
        end

        push!(dict_arr, dict)
    end

    for c ∈ ('a':'z')
        count = typemax(Int)

        for dict ∈ dict_arr
            count = min(count, get(dict, c, 0))
        end

        print(c^count)
    end

    println("")
end

solve()
