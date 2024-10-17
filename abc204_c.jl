function main()
    n, m = parseints()

    g = [[] for _ ∈ 1:n]

    for _ ∈ 1:m
        a, b = parseints()

        push!(g[a], b)
    end

    outcome = 0

    for i ∈ 1:n
        outcome += count_goal(g, [i])
    end

    println(outcome)
end

function count_goal(g, nexts)
    seen = fill(false, length(g))
    seen[nexts[1]] = true

    while !isempty(nexts)
        target_vertex = popfirst!(nexts)

        for vertex ∈ g[target_vertex]
            if seen[vertex]
                continue
            end

            push!(nexts, vertex)
            seen[vertex] = true
        end
    end

    return filter(x -> x, seen) |> count
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
