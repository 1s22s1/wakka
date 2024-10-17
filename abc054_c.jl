using Combinatorics

function main()
    n, m = parseints()

    g = [[] for _ ∈ 1:n]

    for _ ∈ 1:m
        a, b = parseints()

        push!(g[a], b)
        push!(g[b], a)
    end

    outcome = 0

    for perm ∈ permutations(1:n)
        flag = true

        for i ∈ 1:n-1
            if perm[1] ≠ 1
                flag = false
            end

            if perm[i+1] ∉ g[perm[i]]
                flag = false
            end
        end

        if flag
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
