@testset "153.find-minimum-in-rotated-sorted-array.jl" begin
    @test find_min_154([3 3 3 4 5 6 6 6 1 1 2 2 2 2 3 3][:]) == 1
    @test find_min_154([1,3,5]) == 1
    @test find_min_154([2,2,2,0,1]) == 0
    @test find_min_154([3,3,1,3]) == 1
end 