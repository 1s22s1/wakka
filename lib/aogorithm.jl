module Algorithm
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
end

if abspath(PROGRAM_FILE) == @__FILE__
    using .Algorithm

    Algorithm.main()
end
