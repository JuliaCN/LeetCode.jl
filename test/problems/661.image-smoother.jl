@testset "661.image-smoother.jl" begin
    @test image_smoother([1 1 1; 1 0 1; 1 1 1]) == zeros(Int, 3, 3)
    @test image_smoother([100 200 100; 200 50 200; 100 200 100]) ==
        [137 141 137; 141 138 141; 137 141 137]
    @test image_smoother([1 2; 2 3]) == [2 2; 2 2]
    @test image_smoother([1 2 3; 2 3 4]) == [2 2 3; 2 2 3]
    @test image_smoother([1 2]) == [1 1]
    @test image_smoother([1, 2][:, :]) == [1, 1][:, :] ## transpose
end
