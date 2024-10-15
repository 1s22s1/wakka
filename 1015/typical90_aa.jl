parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function solve()
    n = parseint()

    set = Set()

    for i ∈ 1:n
        name = parsestring()

        if name ∉ set
            push!(set, name)

            println(i)
        end
    end
end

solve()
