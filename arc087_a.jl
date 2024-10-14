parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function solve()
    n = parseint()
    an = parseints()

    dict = Dict{Int,Int}()

    for a ∈ an
        dict[a] = get(dict, a, 0) + 1
    end

    outcome = 0

    for (k, v) ∈ dict
        if k > v
            outcome += v
        else
            outcome += (v - k)
        end
    end

    println(outcome)
end

solve()
