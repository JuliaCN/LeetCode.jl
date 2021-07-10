@testset "848.shifting-letters.jl" begin
    @test shifting_letters("abc", [3, 5, 9]) == "rpl"
end