@testset "1631.path-with-minimum-effort.jl" begin
    @test minimum_effort_path([[1, 2, 2], [3, 8, 2], [5, 3, 5]]) == 2
    @test minimum_effort_path([[1, 2, 3], [3, 8, 4], [5, 3, 5]]) == 1
    @test minimum_effort_path([
        [1, 2, 1, 1, 1], [1, 2, 1, 2, 1], [1, 2, 1, 2, 1], [1, 2, 1, 2, 1], [1, 1, 1, 2, 1]
    ]) == 0
    @test minimum_effort_path([[1, 10, 6, 7, 9, 10, 4, 9]]) == 9
end
