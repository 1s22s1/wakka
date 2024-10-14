parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function solve()
    n = parseint()
    positions = [parseints() for _ ∈ 1:n]

    for x ∈ 0:100, y ∈ 0:100
        height =
    end
end

solve()
