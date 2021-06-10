@testset "318.maximum-product-of-word-lengths.jl" begin
    @test max_product(["abcw", "baz", "foo", "bar", "xtfn", "abcdef"]) == 16
    @test max_product(["a", "ab", "abc", "d", "cd", "bcd", "abcd"]) == 4
    @test max_product(["a", "aa", "aaa", "aaaa"]) == 0
end
