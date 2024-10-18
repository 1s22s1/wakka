using Primes

function main()
    sn = BitArray(fill(false, 10^5))

    for i ∈ 1:10^5
        if i % 2 ≠ 0 && isprime(i) && isprime((i + 1) ÷ 2)
            sn[i] = true
        end
    end

    q = parseint()

    for _ ∈ 1:q
        l, r = parseints()

        println(length(filter(x -> x, sn[l:r])))
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
