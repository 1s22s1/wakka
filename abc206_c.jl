parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function outcome()
    n = parseint()
    an = parseints()

    dict = Dict()

    for a ∈ an
        dict[a] = get(dict, a, 0) + 1
    end

    arr = dict |> values |> collect

    outcome = (sum(arr)^2 - sum(arr .^ 2)) ÷ 2

    println(outcome)
end

outcome()
