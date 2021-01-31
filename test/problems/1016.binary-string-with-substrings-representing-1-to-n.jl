@testset "1016.binary-string-with-substrings-representing-1-to-n.jl" begin
    @test query_string("0110", 3) == true
    @test query_string("0110", 4) == false
end