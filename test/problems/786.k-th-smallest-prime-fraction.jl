@testset "786.k-th-smallest-prime-fraction.jl" begin
    res = [1//5, 1//3, 2//5, 1//2, 3//5, 2//3]
    for i in 1:6
        @test kth_smallest_prime_fraction(arr, i) == res[i]   
    end
    @test kth_smallest_prime_fraction([1, 7], 1) == 1//7
    @test kth_smallest_prime_fraction([1, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47], 42) == 7//37
    @test kth_smallest_prime_fraction([1, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47], 24) == 3//29
    @test kth_smallest_prime_fraction([1, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47], 13) == 1//17
end