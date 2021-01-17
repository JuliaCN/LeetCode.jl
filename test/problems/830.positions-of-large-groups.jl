@testset "830.positions-of-large-groups.jl" begin
    @test large_group_positions("abcdddeeeeaabbbcd") == [[3,5],[6,9],[12,14]]
    @test large_group_positions("abbxxxxzzy") == [[3,6]]
    @test large_group_positions("abc") == []
end
