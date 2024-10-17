function main()
    n, q = parseints()

    g = [[] for _ ∈ 1:n]

    for _ ∈ 1:q
        s = parseints()

        if s[1] == 1
            push!(g[s[2]], s[3])
        elseif s[1] == 2
            follwer = []

            for i ∈ 1:n
                if i ≠ s[2] && s[2] ∈ g[i]
                    push!(follwer, i)
                end
            end

            g[s[2]] = g[s[2]] ∪ follwer
        elseif s[1] == 3
            follwer_follwer = []

            for vertex ∈ g[s[2]]
                follwer_follwer = follwer_follwer ∪ g[vertex]
            end
            follwer_follwer = setdiff(follwer_follwer, s[2])

            g[s[2]] = g[s[2]] ∪ follwer_follwer
        end
    end

    for i ∈ 1:n
        for j ∈ 1:n
            if j ∈ g[i]
                print("Y")
            else
                print("N")
            end
        end

        println("")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
