@testset "204.count-primes.jl" begin
    @test count_primes(1) == 0
    @test count_primes(10) == count_primes(11) == 4
    @test count_primes(1000) == 168
    @test count_primes(10000) == 1229
    @test count_primes(100000) == 9592
end
