@testset "155.min-stack.jl" begin
    @testset "155-test case 1" begin
        stack = MinStack()
        @test push!(stack, -2) === nothing
        @test push!(stack, 0) === nothing
        @test push!(stack, -3) === nothing
        @test get_min(stack) == -3
        @test pop!(stack) === nothing
        @test top(stack) == 0
        @test get_min(stack) == -2
    end
    @testset "155-test case 2" begin
        stack = MinStack()
        push!(stack, 2) === nothing
        @test push!(stack, 0) === nothing
        @test push!(stack, 3) === nothing
        @test push!(stack, 0) === nothing
        @test get_min(stack) == 0
        @test pop!(stack) === nothing
        @test get_min(stack) == 0
        @test pop!(stack) === nothing
        @test get_min(stack) == 0
        @test pop!(stack) === nothing
        @test get_min(stack) == 2
    end
end
