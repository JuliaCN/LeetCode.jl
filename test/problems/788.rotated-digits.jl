@testset "788.rotated-digits.jl" begin
    @test rotated_digits(10) == 4
    @test rotated_digits(10000) == 2320
end