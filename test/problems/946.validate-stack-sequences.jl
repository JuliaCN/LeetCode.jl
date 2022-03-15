@testset "946.validate-stack-sequences.jl" begin
    @test validate_stack_sequences([1, 2, 3, 4, 5], [4, 5, 3, 2, 1])
    @test validate_stack_sequences([1, 2, 3, 4, 5], [4, 3, 5, 1, 2]) == false
    @test validate_stack_sequences(Int[], Int[])
end
