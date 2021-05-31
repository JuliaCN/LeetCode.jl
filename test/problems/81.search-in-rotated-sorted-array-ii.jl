@testset "81.search-in-rotated-sorted-array-ii.jl" begin
    @test search([2, 5, 6, 0, 0, 1, 2], 0) == true
    @test search([2, 5, 6, 0, 0, 1, 2], 3) == false
    @test search([2, 5, 6, 0, 0, 1, 2], 2) == true
    @test search([2, 5, 6, 0, 0, 1, 2], 1) == false
    @test search([2, 5, 6, 0, 0, 1, 2], 4) == false
    @test search([2, 5, 6, 0, 0, 1, 2], 5) == true
    @test search([2, 5, 6, 0, 0, 1, 2], 6) == true
    @test search([2, 5, 6, 0, 0, 1, 2], 7) == false
end
