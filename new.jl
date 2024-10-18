using Primes

function main()
    sn = Int16[0]
    sn = zeros(Int16, 10^5 + 1)

    for i ∈ 1:10^5
        if i % 2 ≠ 0 && isprime(i) && isprime((i + 1) ÷ 2)
            sn[i+1] = sn[i] + 1
        else
            sn[i+1] = sn[i]
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
