@testset "1091.shortest-path-in-binary-matrix.jl" begin
    @test shortest_path_binary_matrix([
        0 0 0
        1 1 0
        1 1 0
    ]) == 4
    @test shortest_path_binary_matrix([
        0 1
        1 0
    ]) == 2
end
