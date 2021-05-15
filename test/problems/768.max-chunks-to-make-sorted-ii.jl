@testset "768.max-chunks-to-make-sorted-ii.jl" begin
    @test max_chunks_to_sorted([5,4,3,2,1]) == 1
    @test max_chunks_to_sorted([2,1,3,4,4]) == 4
end
