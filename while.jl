using BenchmarkTools

function loop1(an)
    i = 0

    while i < length(an)
        i += 1
    end
end

function loop2(an)
    n = length(an)
    i = 0

    while i < n
        i += 1
    end
end

an = collect(1:10^8)

println(@benchmark loop1(an))
println(@benchmark loop2(an))
