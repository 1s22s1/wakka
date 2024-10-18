a = [1 2 3; 4 5 6; 7 8 9]

s = zeros(Int, 3 + 1, 3 + 1)

for i ∈ 1:3, j ∈ 1:3
    s[i+1, j+1] = s[i+1, j] + s[i, j+1] - s[i, j] + a[i, j]
end

@show s
