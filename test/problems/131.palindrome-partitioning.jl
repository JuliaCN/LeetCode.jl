@testset "131.palindrome-partitioning.jl" begin
    @test partition_ps("aab") == [["a","a","b"],["aa","b"]]
    @test partition_ps("a") == [["a"]]
end