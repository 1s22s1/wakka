parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function outcome()
    n = parseint()
    an = parseints()
    bn = parseints()
    cn = parseints()

    dict_a = Dict()
    dict_b = Dict()
    dict_c = Dict()

    for a ∈ an
        dict_a[a%46] = get(dict_a, a % 46, 0) + 1
    end

    for b ∈ bn
        dict_b[b%46] = get(dict_b, b % 46, 0) + 1
    end

    for c ∈ cn
        dict_c[c%46] = get(dict_c, c % 46, 0) + 1
    end

    outcome = 0

    for (ka, va) ∈ dict_a, (kb, vb) ∈ dict_b, (kc, vc) ∈ dict_c
        if (ka + kb + kc) % 46 == 0
            outcome += va * vb * vc
        end
    end

    println(outcome)
end

outcome()
