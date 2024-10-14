parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function solve()
    _, k = parseints()
    an = parseints()

    max_value = maximum(an)
    freq_array = zeros(Int, max_value)

    # 頻度を配列で管理
    for a in an
        freq_array[a] += 1
    end

    # 0を除いてソート
    sorted_freq = sort(filter(x -> x > 0, freq_array))

    if length(sorted_freq) <= k
        println(0)
    else
        println(sum(sorted_freq[1:length(sorted_freq) - k]))
    end
end

solve()
