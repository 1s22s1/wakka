function main()
    n = parseint()

    s1 = [0]
    s2 = [0]

    for _ ∈ 1:n
        c, p = parseints()

        if c == 1
            push!(s1, s1[end] + p)
            push!(s2, s2[end])
        else
            push!(s1, s1[end])
            push!(s2, s2[end] + p)
        end
    end

    q = parseint()

    for _ ∈ 1:q
        a, b = parseints()

        println("$(s1[b+1]-s1[a]) $(s2[b+1]-s2[a])")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
