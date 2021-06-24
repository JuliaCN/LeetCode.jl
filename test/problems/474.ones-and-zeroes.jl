@testset "474.ones-and-zeroes.jl" begin
    @test find_max_form(["10", "0001", "111001", "1", "0"], 5, 3) == 4
    @test find_max_form(["10", "0", "1"], 1, 1) == 2
end
