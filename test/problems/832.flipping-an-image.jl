@testset "832.flipping-an-image.jl" begin
    @test flip_and_invert_image!([[1, 1, 0], [1, 0, 1], [0, 0, 0]]) ==
          [[1, 0, 0], [0, 1, 0], [1, 1, 1]]
    @test flip_and_invert_image!([[1, 1, 0, 0], [1, 0, 0, 1], [0, 1, 1, 1], [1, 0, 1, 0]]) ==
          [[1, 1, 0, 0], [0, 1, 1, 0], [0, 0, 0, 1], [1, 0, 1, 0]]
end