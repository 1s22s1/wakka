parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function rle(s)
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

    return arr
end

function outcome()
    s = parsestring()

    arr = rle(s)
    outcome = zeros(Int, length(s))

    cur = 1
    @simd for elem ∈ arr
        # In case of R
        if elem[1] == 'R'
            # odd
            @inbounds outcome[cur+elem[2]-1] += elem[2] / 2 |> ceil

            # even
            @inbounds outcome[cur+elem[2]] += elem[2] ÷ 2

            # In case of L
        else
            # odd
            @inbounds outcome[cur] += elem[2] / 2 |> ceil

            # even
            @inbounds outcome[cur-1] += elem[2] ÷ 2
        end

        cur += elem[2]
    end

    println(join(outcome, " "))
end

outcome()
