@testset "1207.unique-number-of-occurrences.jl" begin
    @test unique_number_of_occurrences([1,2,2,1,1,3])
    @test !(unique_number_of_occurrences([1,2]))
    @test unique_number_of_occurrences([-3,0,1,-3,1,1,1,-3,10,0])
end
