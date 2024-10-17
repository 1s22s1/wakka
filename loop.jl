using BenchmarkTools

function loop1(an)
    sum = 0

    for i ∈ 1:length(an)
        sum += an[i]
    end
end

function loop2(an)
    sum = 0
    n = length(an)

    for i ∈ 1:n
        sum += an[i]
    end
end

an = collect(1:10^8)

println(@benchmark loop1(an))
println(@benchmark loop2(an))
