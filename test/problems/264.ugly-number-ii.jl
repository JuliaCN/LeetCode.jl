@testset "264.ugly-number-ii.jl" begin
    @test nth_ugly_number(10) == 12
    @test nth_ugly_number(153) == 6144
end