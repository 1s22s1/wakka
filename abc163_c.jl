function main()
    n = parseint()
    an = parseints()

    g = [[] for _ ∈ 1:n]

    for i ∈ 1:n-1
        push!(g[an[i]], i+1)
    end

    for e ∈ g
        println(length(e))
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
