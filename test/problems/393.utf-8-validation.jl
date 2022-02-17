@testset "393.utf-8-validation.jl" begin
    @test valid_utf8([197, 130, 1]) == true
    @test valid_utf8([235, 140, 4]) == false
    @test valid_utf8([255]) == false
    @test valid_utf8([237]) == false
    @test valid_utf8([0]) == true
end
