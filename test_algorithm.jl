module TestAlgorithm
using Test

include("aogorithm.jl")

function main()
    @testset "rle" begin
        @test Algorithm.rle("aabbbaad") == [('a', 2), ('b', 3), ('a', 2), ('d', 1)]
        @test Algorithm.rle("aabbbbbbbbbbbbxyza") ==
              [('a', 2), ('b', 12), ('x', 1), ('y', 1), ('z', 1), ('a', 1)]
        @test Algorithm.rle("edcba") == [('e', 1), ('d', 1), ('c', 1), ('b', 1), ('a', 1)]
    end
end
end

if abspath(PROGRAM_FILE) == @__FILE__
    using .TestAlgorithm

    TestAlgorithm.main()
end
