function main()
    n, m = parseints()
    distances = [parseint() for _ ∈ 1:n-1]
    itinearies = [parseint() for _ ∈ 1:m]

    sn = [0]
    for d ∈ distances
        push!(sn, sn[end] + d)
    end

    outcome = 0
    cur = 1

    for itineary ∈ itinearies
        outcome += abs(sn[cur+itineary] - sn[cur])

        cur += itineary
    end

    outcome %= 10^5

    println(outcome)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
