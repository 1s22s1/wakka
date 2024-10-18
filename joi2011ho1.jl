function main()
    m, n = parseints()
    k = parseint()

    map = []

    for _ ∈ 1:m
        line = split(parsestring(), "")
        push!(map, line)
    end



    for _ ∈ 1:k
        a, b, c, d = parseints()
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
