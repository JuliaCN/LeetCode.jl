@testset "1488.avoid-flood-in-the-city.jl" begin
    @test avoid_flood([1, 2, 3, 4]) == [-1, -1, -1, -1]
    @test avoid_flood([1, 2, 0, 0, 2, 1]) == [-1, -1, 2, 1, -1, -1]
    @test avoid_flood([1, 2, 0, 1, 2]) == []
    @test avoid_flood([69, 0, 0, 0, 69]) == [-1, 69, 1, 1, -1]
    @test avoid_flood([10, 20, 20]) == []
    @test avoid_flood([0, 1, 1]) == []
    @test avoid_flood([1, 0, 2, 0, 2, 1]) == [-1, 1, -1, 2, -1, -1]
    @test avoid_flood([1, 0, 2, 3, 0, 1, 2]) == [-1, 1, -1, -1, 2, -1, -1]
    @test avoid_flood([1, 0, 2, 0, 3, 0, 2, 0, 0, 0, 1, 2, 3]) ==
        [-1, 1, -1, 2, -1, 3, -1, 2, 1, 1, -1, -1, -1]
end
