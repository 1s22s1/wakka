parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function outcome()
    s = parsestring()

    arr = zeros(Int, length(s) + 1)

    # Left search, target is <

    for i ∈ 1:length(s)
        if s[i] == '<'
            arr[i+1] = arr[i] + 1
        end
    end

    for i ∈ length(s):-1:1
        if s[i] == '>'
            arr[i] = max(arr[i], arr[i+1] + 1)
        end
    end

    println(sum(arr))
end

outcome()
