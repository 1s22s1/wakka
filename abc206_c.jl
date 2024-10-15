parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function solve()
    n = parseint()
    an = parseints()

    dict = Dict()
    for a ∈ an
        dict[a] = get(dict, a, 0) + 1
    end

    arr = collect(values(dict))
    outcome = 0

    for i ∈ eachindex(arr), j ∈ i+1:length(arr)
        outcome += arr[i]*arr[j]
    end

    println(outcome)
end

solve()
