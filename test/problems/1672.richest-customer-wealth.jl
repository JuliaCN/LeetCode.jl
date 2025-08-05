@testset "1672.richest-customer-wealth.jl" begin
    @test maximumWealth([1 2 3; 3 2 1]) == 6
    @test maximumWealth([1 5; 7 3; 3 5]) == 10
    @test maximumWealth([2 8 7; 7 1 3; 1 9 5]) == 17
end
