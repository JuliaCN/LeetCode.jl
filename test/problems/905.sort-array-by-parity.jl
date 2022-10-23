@testset "905.sort-array-by-parity.jl" begin
    issorted_by_parity(arr) = issorted(arr; by=isodd)
    @test issorted_by_parity(sort_array_by_parity!([3, 1, 2, 4]))
    @test issorted_by_parity(sort_array_by_parity!(rand(1:5000, 2000)))
    @test issorted_by_parity(sort_array_by_parity!([1, 3, 5, 7]))
end
