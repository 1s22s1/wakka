function main()
    m, n = parseints()
    k = parseint()

    map = []

    for _ ∈ 1:m
        line = split(parsestring(), "")
        push!(map, line)
    end

    sj = zeros(Int, m + 1, n + 1)
    oj = zeros(Int, m + 1, n + 1)

    for i ∈ 1:m, j ∈ 1:n
        cur_j = map[i][j] == "J" ? 1 : 0
        sj[i+1, j+1] = sj[i+1, j] + sj[i, j+1] - sj[i, j] + cur_j
    end

    for _ ∈ 1:k
        a, b, c, d = parseints()

        outcome_j = sj[c+1, d+1] - sj[c+1, b] - sj[a, d+1] + sj[a, b]

        println("$(outcome_j)")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
