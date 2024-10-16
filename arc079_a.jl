function main()
    n, m = parseints()

    g = [[] for _ ∈ 1:n]

    for _ ∈ 1:m
        a, b = parseints()

        push!(g[a], b)
    end

    for e ∈ g[1]
        if n ∈ g[e]
            println("POSSIBLE")

            exit()
        end
    end

    println("IMPOSSIBLE")

end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
