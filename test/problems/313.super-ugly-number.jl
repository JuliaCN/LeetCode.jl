@testset "313.super-ugly-number.jl" begin
    primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71,
              73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151,
              157, 163, 167, 173, 179, 181, 191, 193, 197, 199]
    @test nth_super_ugly_number(1, primes) == 1
    @test nth_super_ugly_number(22, primes) == 22
    @test nth_super_ugly_number(222222, primes) == 1922232
end
