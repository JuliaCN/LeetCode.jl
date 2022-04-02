@testset "315.count-of-smaller-numbers-after-self.jl" begin
    f1 = count_smaller_method1
    f2 = count_smaller_method2
    @test f1([5, 2, 6, 1]) == f2([5, 2, 6, 1]) == [2, 1, 1, 0]
    @test f1([2, 0, 1]) == f2([2, 0, 1]) == [2, 0, 0]
    @test f1([-1]) == f2([-1]) == [0]
    @test f1([-1, -1]) == f2([-1, -1]) == [0, 0]
    @test f1([7, 6, 5, 4, 3, 2, 1]) == f2([7, 6, 5, 4, 3, 2, 1]) == [6, 5, 4, 3, 2, 1, 0]
end
