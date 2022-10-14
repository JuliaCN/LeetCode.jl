@testset "940.distinct-subsequences-ii.jl" begin
    @test distinct_subseq2("abc") == 7
    @test distinct_subseq2("aba") == 6
    @test distinct_subseq2("aaa") == 3
    @test distinct_subseq2("nawmppmmoeikcugrkowveruwcmwsodmtsuhlykojmvdemnzhtu") ==
        237984218
end
