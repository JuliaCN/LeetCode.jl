@testset "448.find-all-numbers-disappeared-in-an-array.jl" begin
    @test find_all_numbers_disappeared_in_an_array([4,3,2,7,8,2,3,1]) == [5,6]
    @test find_all_numbers_disappeared_in_an_array([1,1]) == [2]
end
