@testset "75.sort-colors.jl" begin
    @test (nums = [2, 0, 2, 1, 1, 0]; sort_colors!(nums); nums == [0, 0, 1, 1, 2, 2])
    @test (nums = [2, 0, 1]; sort_colors!(nums); nums == [0, 1, 2])
    @test (nums = [0]; sort_colors!(nums); nums == [0])
    @test (nums = [1]; sort_colors!(nums); nums == [1])
end
