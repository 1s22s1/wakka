using Primes

function main()
    sn = [0]

    for i ∈ 1:2020
        if i % 2 ≠ 0 && isprime(i) && isprime((i + 1) ÷ 2)
            push!(sn, sn[end] + 1)
        else
            push!(sn, sn[end])
        end
    end

    q = parseint()

    for _ ∈ 1:q
        l, r = parseints()

        println(sn[r+1] - sn[l])
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
