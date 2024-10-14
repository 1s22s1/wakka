parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function solve()
    n, k = parseints()

    dict = Dict()

    for i ∈ 1:n
        dict[i%k] = get(dict, i % k, 0) + 1
    end

    outcome = 0

    for i ∈ 0:k-1
        b = (k - i) % k
        c = (k - i) % k

        if (b + c) % k == 0
            outcome += get(dict, i, 0) * get(dict, b, 0) * get(dict, c, 0)
        end
    end

    println(outcome)
end

solve()
