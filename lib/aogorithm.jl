module Algorithm
function rle(s)
    arr = []
    n = length(s)

    i = 1
    while i < n + 1
        j = i

        while j < n + 1 && s[i] == s[j]
            j += 1
        end

        push!(arr, (s[i], j - i))
        i = j
    end

    return arr
end

function bfs(s, g)
    nexts = [s]

    seen = fill(false, length(g))
    seen[s] = true

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

    return filter(x -> x, seen) |> length
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
end

if abspath(PROGRAM_FILE) == @__FILE__
    using .Algorithm

    Algorithm.main()
end
