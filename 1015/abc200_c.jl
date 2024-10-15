parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function outcome()
    n = parseint()
    an = parseints()

    dict = Dict()

    for a ∈ an
        dict[a%200] = get(dict, a % 200, 0) + 1
    end

    arr = dict |> values |> collect

    outcome = 0
    for elem ∈ arr
        if elem ≥ 2
            outcome += elem * (elem - 1) ÷ 2
        end
    end

    println(outcome)
end

outcome()
