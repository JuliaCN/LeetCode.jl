@testset "204.count-primes.jl" begin
    @test search_matrix(arr, 5) == true
    @test search_matrix(arr, 20) == false
end
