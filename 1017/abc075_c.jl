function main()
    n, m = parseints()
    edges = [parseints() for _ ∈ 1:m]

    outcome = 0

    for i ∈ 1:m
        g = graph(n, filter(x -> x != edges[i], edges))

        if !isconnect(g)
            outcome += 1
        end
    end

    println(outcome)
end

function graph(n, edges)
    g = [[] for _ ∈ 1:n]

    for edge ∈ edges
        push!(g[edge[1]], edge[2])
        push!(g[edge[2]], edge[1])
    end

    return g
end

function isconnect(g)
    nexts = [1]
    seen = fill(false, length(g))
    seen[1] = true

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

    return all(x -> x, seen)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
