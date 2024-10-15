parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function outcome()
    s = parsestring()
    k = parseint()

    arr = []

    i = 1
    while i < length(s)+1
        j = i

        while j < length(s)+1 && s[i] == s[j]
            j += 1
        end

        push!(arr, (s[i], j-i))
        i = j
    end

    outcome = 0

    # 先頭と末尾の文字が同じの場合
    if arr[begin][1] == arr[end][1] && length(arr) ≥ 2
        left_side = arr[begin]
        right_side = arr[end]
        middle = arr[begin+1:end-1]

        operation_count = 0
        operation_count += left_side[2] ÷ 2
        operation_count += right_side[2] ÷ 2

        operation_count += (left_side[2] + right_side[2]) ÷ 2 * (k - 1)
        for elem ∈ middle
            operation_count += elem[2] ÷ 2 * k
        end

       outcome = operation_count
    else
        operation_count = 0
        for elem ∈ arr
            operation_count += elem[2] ÷ 2
        end

        outcome = operation_count * k
    end

    println(outcome)
end

outcome()
