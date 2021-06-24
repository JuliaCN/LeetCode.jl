@testset "859.buddy-strings.jl" begin
    A = "ab"
    B = "ba"
    @test buddy_strings(A, B) == true

    A = "ab"
    B = "ab"
    @test buddy_strings(A, B) == false

    A = "aa"
    B = "aa"
    @test buddy_strings(A, B) == true

    A = "aaaaaaabc"
    B = "aaaaaaacb"
    @test buddy_strings(A, B) == true

    A = ""
    B = "aa"
    @test buddy_strings(A, B) == false

    @test buddy_strings("abc", "bca") == false
end
