@testset "766.toeplitz-matrix" begin
    @test is_toeplitz_matrix([[1,2,3,4],[5,1,2,3],[9,5,1,2]]) == true
    @test is_toeplitz_matrix([[1,2],[2,2]]) == false
end
