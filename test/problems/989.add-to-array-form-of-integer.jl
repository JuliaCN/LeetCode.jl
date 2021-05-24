@testset "989.add-add_to_array_form-of-integer.jl" begin
    @test add_to_array_form([1, 2, 0, 0], 34) == [1, 2, 3, 4]
    @test add_to_array_form([2, 7, 4], 181) == [4, 5, 5]
    @test add_to_array_form([2, 1, 5], 806) == [1, 0, 2, 1]
    @test add_to_array_form([9, 9, 9, 9, 9, 9, 9, 9, 9, 9], 1) == [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
end
