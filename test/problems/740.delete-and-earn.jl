@testset "740.delete-and-earn.jl" begin
    @test delete_and_earn([3,4,2]) == 6
    @test delete_and_earn([2,2,3,3,3,4]) == 9
    
end