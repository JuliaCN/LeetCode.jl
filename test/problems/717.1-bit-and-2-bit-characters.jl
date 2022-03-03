@testset "717.1-bit-and-2-bit-characters.jl" begin
    @test is_one_bit_character([1, 1, 1, 1, 0]) == true
    @test is_one_bit_character([1, 0]) == false
    @test is_one_bit_character([1, 1, 1, 0]) == false
    @test is_one_bit_character([1, 0, 1, 1, 0]) == true
end
