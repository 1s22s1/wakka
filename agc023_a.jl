function main()
    n = parseint()
    an = parseints()

    sn = [0]

    for a ∈ an
        push!(sn, sn[end]+a)
    end

    outcome = 0

    for k ∈ 1:n, i ∈ 1:n-k+1
        if sn[i+k]-sn[i] == 0
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
