@testset "1034.coloring-a-border.jl" begin
    @test color_border(hcat([[1, 1], [1, 2]]...), 1, 1, 3) == hcat([[3, 3], [3, 2]]...)
    @test color_border(hcat([[1, 1, 1], [1, 1, 1], [1, 1, 1]]...), 2, 2, 2) ==
          hcat([[2, 2, 2], [2, 1, 2], [2, 2, 2]]...)
    @test color_border(hcat([[1, 2, 2], [2, 3, 2]]...), 2, 1, 3) ==
          hcat([[1, 3, 3], [2, 3, 3]]...)
end
