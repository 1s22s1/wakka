parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function solve()
    n = parseint()
    sn = [parsestring() for _ ∈ 1:n]

    println(sn |> unique |> length)
end

solve()
