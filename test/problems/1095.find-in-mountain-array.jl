@testset "1095.find-in-mountain-array.jl" begin
    @test find_in_mountain_array(MountainArray([1, 2, 3, 4, 5, 3, 1]), 3) == 3
    @test find_in_mountain_array(MountainArray([0, 1, 2, 4, 2, 1]), 3) == -1
    @test find_in_mountain_array(MountainArray([1, 2, 3, 5, 4, 3, 1]), 4) == 5
end
