@testset "706.design-hashmap.jl" begin
    hm = MyHashMap()
    @test put_706!(hm, 1, 1) == nothing
    @test put_706!(hm, 2, 2) == nothing
    @test get_706(hm, 1) == 1
    @test get_706(hm, 3) == -1
    @test put_706!(hm, 2, 1) == nothing
    @test get_706(hm, 2) == 1
    @test remove_706!(hm, 2) == nothing
    @test get_706(hm, 2) == -1
end
