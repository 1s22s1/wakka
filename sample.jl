parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function solve()
    n, k = parseints()
    an = parseints()

    frequency = zeros(Int, maximum(an))

    for a ∈ an
        frequency[a] += 1
    end

    sorted_frequency = sort(filter(x -> x ≠ 0, frequency))

    if length(sorted_frequency) ≤ k
        println(0)
    else
        println(sorted_frequency[begin:length(sorted_frequency)-k] |> sum)
    end
end

solve()
