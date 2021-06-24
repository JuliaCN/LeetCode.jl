@testset "516.longest-palindromic-subsequence.jl" begin
    @test longest_palindrome_subseq("bbbab") == 4
    @test longest_palindrome_subseq("cbbd") == 2 
    @test longest_palindrome_subseq("onhxrcdszgcncrxkjktufmgljsrhyumyxholdogjoqjewlxgxncmhjpwtrklngzfyizwdvhpxgmvzswnsyjrynvvbmsciztxlgcofetdffwxlkdteknigzjnjzfbobvpxmqonvqzyrhalqxajqpfddspnrgvbaposcezgewcsddjwvoqknmfztyfdycgaomczthegdmt") == 60
end