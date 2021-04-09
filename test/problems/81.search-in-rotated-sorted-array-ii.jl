@testset "81.search-in-rotated-sorted-array-ii.jl" begin
    @test search([2, 5, 6, 0, 0, 1, 2], 0) == true
    @test search([2, 5, 6, 0, 0, 1, 2], 3) == false
end
