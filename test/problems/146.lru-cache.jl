@testset "146.lru-cache.jl" begin
    cache = LRUCache(2)
    cache[1] = 1
    cache[2] = 2
    @test cache[1] == 1
    cache[3] = 3
    @test cache[2] == -1
    cache[4] = 4
    @test cache[1] == -1
    @test cache[3] == 3
    @test cache[4] == 4
end