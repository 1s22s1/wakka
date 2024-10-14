parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function solve()
    n, m = parseints()

    arr = []
    for _ ∈ 1:n
        foods = parseints()
        push!(arr, foods[2:end])
    end

    outcome = 0

    loved_foods = collect(1:m)

    for food ∈ arr
        loved_foods = loved_foods ∩ food
    end

    outcome = length(loved_foods)
    println(outcome)
end

solve()
