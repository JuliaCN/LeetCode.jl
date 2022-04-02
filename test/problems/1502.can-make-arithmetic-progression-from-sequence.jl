@testset "1502.can-make-arithmetic-progression-from-sequence.jl" begin
    @test can_make_arith([3, 5, 1])
    @test !can_make_arith([1, 2, 4])
end
