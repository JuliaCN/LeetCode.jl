@testset "893.groups-of-special-equivalent-strings.jl" begin
    @test num_special_equiv_groups(["abc","acb","bac","bca","cab","cba"]) == 3
    @test num_special_equiv_groups(["abcd","cdab","cbad","xyzz","zzxy","zzyx"]) == 3
end