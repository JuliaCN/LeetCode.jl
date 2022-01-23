@testset "198.house-robber.jl" begin
    @test rob([1, 2, 3, 1]) == 4
    @test rob([2, 7, 9, 3, 1]) == 12
    @test rob([2, 1]) == 2
    @test rob([3]) == 3
end
