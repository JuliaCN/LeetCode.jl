@testset "1450.number-of-students-doing-homework-at-a-given-time.jl" begin
    @test busystudent([1,2,3], [3,2,7], 4) == 1
    @test busystudent([4], [4], 4) == 1
    @test busystudent([4], [4], 5) == 0
    @test busystudent([1,1,1,1], [1,3,2,4], 7) == 0
    @test busystudent([9,8,7,6,5,4,3,2,1], [10,10,10,10,10,10,10,10,10], 5) == 5
end