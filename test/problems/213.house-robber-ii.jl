@testset "213.house-robber-ii.jl" begin
    @test rob_213([200, 3, 140, 20, 10]) == 340
    @test rob_213([2, 3, 2]) == 3
    @test rob_213([1, 2, 3, 1]) == 4
    @test rob_213([1, 2, 3]) == 3
    @test rob_213([3]) == 3
    @test rob_213([1, 2]) == 2
end
