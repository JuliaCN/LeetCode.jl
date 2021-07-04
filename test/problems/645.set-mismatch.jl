@testset "645.set-mismatch.jl" begin
    @test find_error_nums([1, 2, 2, 4]) == (2, 3)
    @test find_error_nums([1, 1]) == (1, 2) 
end