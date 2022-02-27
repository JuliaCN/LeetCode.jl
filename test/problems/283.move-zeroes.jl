@testset "283.move-zeroes.jl" begin
    nums = [0, 1, 0, 3, 12]
    move_zeros!(nums)
    @test nums == [1, 3, 12, 0, 0]

    nums = [0, 0, 1, 2]
    move_zeros!(nums)
    @test nums == [1, 2, 0, 0]

    nums = [0]
    move_zeros!(nums)
    @test nums == [0]
end
