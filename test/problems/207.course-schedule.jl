@testset "204.count-primes.jl" begin
    @test can_finish_courses(2, [[2, 1]]) == true
    @test can_finish_courses(2, [[2, 1], [1, 2]]) == false
end

 