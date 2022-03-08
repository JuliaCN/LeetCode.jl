@testset "1104.path-in-zigzag-labelled-binary-tree.jl" begin
    @test path_in_zig_zag_tree(26) == [1, 2, 6, 10, 26]
    @test path_in_zig_zag_tree(14) == [1, 3, 4, 14]
    @test path_in_zig_zag_tree(7684) == [1, 2, 7, 8, 30, 35, 120, 143, 480, 575, 1921, 2301, 7684]
end

