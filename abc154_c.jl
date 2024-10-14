parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function solve()
    n = parseint()
    an = parseints()

    if an |> length == an |> unique |> length
        println("YES")
    else
        println("NO")
    end
end

solve()
