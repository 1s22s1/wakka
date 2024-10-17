using BenchmarkTools

function rle1(str)
    i = 1
    n = length(str)

    while i < n + 1
        i += 1
    end
end

function rle2(str)
    i = 1

    while i < length(str) + 1
        i += 1
    end
end

str = 'A'^1000

println(@benchmark rle1(str))
println(@benchmark rle2(str))
