parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function outcome()
    s = parsestring()

    arr = []

    i = 1
    while i < length(s) + 1
        j = i

        while j < length(s) + 1 && s[i] == s[j]
            j += 1
        end

        push!(arr, (s[i], j - i))
        i = j
    end

    outcome = 0
    for i ∈ 1:length(arr)-1
        if arr[i][1] == '<' && arr[i+1][1] == '>'
            max_value = max(arr[i][2], arr[i+1][2])

            # left+middle+right
            outcome += sum(0:(arr[i][2]-1)) + max_value + sum(0:(arr[i+1][2]-1))
        elseif arr[i][1] == '>' && arr[i+1][1] == '<'
            max_value = max(arr[i][2], arr[i+1][2])

            # left+middle+right
            outcome += sum(0:(arr[i][2]-1)) + max_value + sum(0:(arr[i+1][2]-1))
        end
    end

    println(outcome)
end

outcome()
