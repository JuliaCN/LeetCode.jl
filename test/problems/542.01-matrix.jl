@testset "542.01-matrix.jl" begin
    @test update_matrix(hcat([[0, 0, 0], [0, 1, 0], [0, 0, 0]]...)) ==
          hcat([[0, 0, 0], [0, 1, 0], [0, 0, 0]]...)
    @test update_matrix(hcat([[0, 0, 0], [0, 1, 0], [1, 1, 1]]...)) ==
          hcat([[0, 0, 0], [0, 1, 0], [1, 2, 1]]...)
end
