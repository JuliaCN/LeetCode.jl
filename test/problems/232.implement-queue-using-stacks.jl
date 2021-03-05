@testset "232.implement-queue-using-stacks.jl" begin
    q = MyQueue()
    @test myqueue_push!(q, 1) == [1]
    @test myqueue_push!(q, 2) == [1, 2]
    @test myqueue_peek(q) == 1
    @test myqueue_pop!(q) == 1
    @test myqueue_isempty(q) == false
end
