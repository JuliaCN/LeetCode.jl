@testset "198.house-robber.jl" begin
    @test rob_198([1, 2, 3, 1]) == 4
    @test rob_198([2, 7, 9, 3, 1]) == 12
    @test rob_198([2, 1]) == 2
    @test rob_198([3]) == 3
end
