@testset "1047.remove-all-adjacent-duplicates-in-string.jl" begin
    @test remove_duplicates("abbaca") == "ca"
    @test remove_duplicates("abshxbcbxvcbshsvzxchsbcdhxvcbcbcbcbcbdhdbxbssscbxbxbchdnvbdhdnvbxbd") == "abshxbcbxvcbshsvzxchsbcdhxvcbcbcbcbcbdhdbxbscbxbxbchdnvbdhdnvbxbd"
end
