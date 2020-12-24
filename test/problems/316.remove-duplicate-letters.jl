@testset "316.remove-duplicate-letters.jl" begin
    @test remove_duplicate_letters("bcabc") == "abc"
    @test remove_duplicate_letters("ecbacba") == "eacb"
    @test remove_duplicate_letters("bddbccd") == "bcd"
end