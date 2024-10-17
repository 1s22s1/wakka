parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function rle(s)
    arr = []
    n = length(s)

    i = 1
    while i < n + 1
        j = i

        while j < n + 1 && s[i] == s[j]
            j += 1
        end

        push!(arr, (s[i], j - i))
        i = j
    end

    return arr
end

function outcome()
    s = parsestring()

    arr = rle(s)
    outcome = zeros(Int, length(s))

    cur = 1
    for elem ∈ arr
        # In case of R
        if elem[1] == 'R'
            # odd
            outcome[cur+elem[2]-1] += elem[2] / 2 |> ceil

            # even
            outcome[cur+elem[2]] += elem[2] ÷ 2

            # In case of L
        else
            # odd
            outcome[cur] += elem[2] / 2 |> ceil

            # even
            outcome[cur-1] += elem[2] ÷ 2
        end

        cur += elem[2]
    end

    println(join(outcome, " "))
end

outcome()
