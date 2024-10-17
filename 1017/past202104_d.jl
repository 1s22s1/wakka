function main()
    n, k = parseints()
    an = parseints()

    sn = [0]
    for a ∈ an
        push!(sn, sn[end] + a)
    end

    for i ∈ 1:n-k+1
        println(sn[i+k] - sn[i])
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
