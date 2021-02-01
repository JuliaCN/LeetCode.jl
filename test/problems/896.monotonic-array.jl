@testset "896.monotonic-array.jl" begin
    @test is_monotonic([1,2,2,3]) == true
    @test is_monotonic([6,5,4,4]) == true
    @test is_monotonic([1,3,2]) == false
    @test is_monotonic([1,2,4,5]) == true
    @test is_monotonic([1,1,1]) == true
end