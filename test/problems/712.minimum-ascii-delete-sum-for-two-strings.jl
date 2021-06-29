@testset "712.minimum-ascii-delete-sum-for-two-strings.jl" begin
    @test minimum_delete_sum("sea", "eat") == 231
    @test minimum_delete_sum("delete", "leet") == 403
end