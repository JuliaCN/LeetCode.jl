@testset "791.custom-sort-string.jl" begin
    @test custom_sort_string("cba", "abcd") == "dcba"
end