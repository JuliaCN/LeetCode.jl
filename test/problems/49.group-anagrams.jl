@testset "49.group-anagrams.jl" begin
    function check(input, reference)
        res = groupAnagrams(input)
        res = sort(map(sort, res))
        ref = sort(map(sort, res))
        return res == ref
    end
    @test check(["eat","tea","tan","ate","nat","bat"], [["bat"],["nat","tan"],["ate","eat","tea"]])
    @test check([""], [""])
    @test check(["a"], ["a"])
end
