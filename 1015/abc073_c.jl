parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function solve()
    n = parseint()

    dict = Dict{Int,Int}()

    for _ ∈ 1:n
        a = parseint()

        dict[a] = get(dict, a, 0) + 1
    end

    outcome = filter(kv -> kv[2] % 2 ≠ 0, dict) |> length

    println(outcome)
end

solve()
