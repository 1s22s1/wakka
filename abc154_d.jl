using Printf

function main()
    n, k = parseints()
    pn = parseints()

    sn = Float64[0]

    for p ∈ pn
        push!(sn, sn[end] + sum(1:p) / p)
    end

    outcome = -1

    for i ∈ 1:n-k+1
        outcome = max(outcome, sn[i+k] - sn[i])
    end

    @printf("%.6f\n", outcome)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
