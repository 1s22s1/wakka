function main()
    n = parseint()
    an = parseints()

    sn = [0]

    for a ∈ an
        push!(sn, sn[end] + a)
    end

    for k ∈ 1:n
        outcome = -1

        for i ∈ 1:n-k+1
            outcome = max(outcome, sn[i+k] - sn[i])
        end

        println(outcome)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
