@testset "769.max-chunks-to-make-sorted.jl" begin
    @test max_chunks_to_sorted_ii([1, 0, 2, 3, 4]) == 4
    @test max_chunks_to_sorted_ii([4, 3, 2, 1, 0]) == 1
    @test max_chunks_to_sorted_ii([2, 4, 1, 5, 0, 7, 8, 6, 3, 9]) == 2
    @test max_chunks_to_sorted_ii([1, 2, 0, 3, 5, 4, 6, 7, 9, 8]) == 6
end
