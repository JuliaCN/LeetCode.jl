@testset "990.satisfiability-of-equality-equations.jl" begin
    @test equations_possible(["a==b","b!=a"]) == false
    @test equations_possible(["b==a","a==b"]) == true
    @test equations_possible(["a==b","b==c","a==c"]) == true
    @test equations_possible(["a==b","b!=c","c==a"]) == false
    @test equations_possible(["c==c","b==d","x!=z"]) == true
end