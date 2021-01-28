@testset "779.k-th-symbol-in-grammar.jl" begin
    @test kth_grammar(30, 235236) == true
    @test kth_grammar(30, 755232) == true
    @test kth_grammar(1, 1) == 0
    @test kth_grammar(2, 1) == 0 
end