function main()
    n, m = parseints()

    g = [[] for _ ∈ 1:n]

    for _ ∈ 1:m
        a, b = parseints()

        push!(g[a], b)
        push!(g[b], a)
    end

    outcome = 0

    for i ∈ 1:n
        if filter(x -> i > x, g[i]) |> length == 1
            outcome += 1
        end
    end

    println(outcome)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
