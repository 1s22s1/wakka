function main()
    m, n = parseints()
    k = parseint()

    map = []

    for _ ∈ 1:m
        line = split(parsestring(), "")
        push!(map, line)
    end

    sj = makes(m, n, map, "J")
    so = makes(m, n, map, "O")
    si = makes(m, n, map, "I")

    for _ ∈ 1:k
        a, b, c, d = parseints()

        outcome_j = calculates(a, b, c, d, sj)
        outcome_o = calculates(a, b, c, d, so)
        outcome_i = calculates(a, b, c, d, si)

        println("$(outcome_j) $(outcome_o) $(outcome_i)")
    end
end

function makes(m, n, a, c)
    s = zeros(Int, m + 1, n + 1)

    for i ∈ 1:m, j ∈ 1:n
        cur_c = a[i][j] == c ? 1 : 0

        s[i+1, j+1] = s[i+1, j] + s[i, j+1] - s[i, j] + cur_c
    end

    return s
end

function calculates(x1, y1, x2, y2, s)
    return s[x2+1, y2+1] - s[x2+1, y1] - s[x1, y2+1] + s[x1, y1]
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
