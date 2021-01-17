@testset "189.rotate-array.jl" begin
    @test rotate_arr([1,2,3,4,5,6,7], 3) == [5,6,7,1,2,3,4]
    @test rotate_arr([-1,-100,3,99], 2) == [3,99,-1,-100]
end
