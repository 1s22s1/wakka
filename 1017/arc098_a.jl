function main()
    n = parseint()
    s = parsestring()

    e_s = [0]
    w_s = [0]

    for c ∈ s
        if c == 'E'
            push!(e_s, e_s[end] + 1)
            push!(w_s, w_s[end])
        else
            push!(e_s, e_s[end])
            push!(w_s, w_s[end] + 1)
        end
    end

    outcome = typemax(Int)

    for i ∈ 1:n
        from_e_to_w = e_s[end] - e_s[i+1]
        from_w_to_e = w_s[i]

        outcome = min(outcome, from_e_to_w + from_w_to_e)
    end

    println(outcome)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
