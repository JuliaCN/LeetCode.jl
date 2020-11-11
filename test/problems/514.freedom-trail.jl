@testset "514.freedom-trail.jl" begin
    @test find_rotate_steps("godding", "gd") == 4
    @test find_rotate_steps("godding", "godding") == 13
end
