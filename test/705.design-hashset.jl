@testset "705.design-hashset.jl" begin
    hs = MyHashSet()
    @test add_705!(hs, 1) == nothing
    @test add_705!(hs, 2) == nothing
    @test contains_705(hs, 1) == true
    @test contains_705(hs, 3) == false
    @test add_705!(hs, 2) == nothing
    @test contains_705(hs, 2) == true
    @test remove_705!(hs, 2) == []
    @test contains_705(hs, 2) == false
end
