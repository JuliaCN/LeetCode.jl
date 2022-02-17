@testset "35.search-insert-position.jl" begin
    @test search_insert([1, 3, 5, 6], 5) == 2
    @test search_insert([1, 3, 5, 6], 2) == 1
    @test search_insert([1, 3, 5, 6], 7) == 4
    @test search_insert([1, 3, 5, 6], 0) == 0
end
