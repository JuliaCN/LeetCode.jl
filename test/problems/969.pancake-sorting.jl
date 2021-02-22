@testset "969.pancake-sorting.jl" begin
    @test issorted(pancake_sort!([3, 2, 4, 1], pancake_sort([3, 2, 4, 1])))
    @test issorted(pancake_sort!([1, 2, 3], pancake_sort([1, 2, 3])))
end