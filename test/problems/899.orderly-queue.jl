@testset "899.orderly-queue.jl" begin
    @test orderly_queue("cba", 1) == "acb"
    @test orderly_queue("baaca", 3) == "aaabc"
end