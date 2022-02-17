@testset "278.first-bad-version.jl" begin
    @test first_bad_version(5, i -> (i >= 4)) == 4
    @test first_bad_version(1, i -> (i >= 1)) == 1
    @test first_bad_version(2022, i -> (i >= 1024)) == 1024
end
