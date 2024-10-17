g = [[2, 3, 4], [1, 5, 6], [1, 6], [1, 7], [2, 8], [2, 3, 7], [4, 6, 9], [5, 9], [7, 8]]

nexts = [1]
seen = fill(false, length(g))
seen[1] = true

while !isempty(nexts)
    target_vertex = popfirst!(nexts)

    for next_vertex ∈ g[target_vertex]
        if seen[next_vertex]
            continue
        end

        seen[next_vertex] = true
        push!(nexts, next_vertex)
    end
end
