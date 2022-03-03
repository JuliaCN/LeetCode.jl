@testset "295.find-median-from-data-stream.jl" begin
    @testset "295-case 1" begin
        heap = MedianFinder()
        add_num!(heap, 1)
        add_num!(heap, 2)
        @test find_median(heap) == 1.5
        add_num!(heap, 3)
        @test find_median(heap) == 2
    end
    @testset "295-case 2" begin
        heap = MedianFinder()
        add_num!(heap, 5)
        add_num!(heap, 4)
        @test find_median(heap) == 4.5
        add_num!(heap, 2)
        @test find_median(heap) == 4
        add_num!(heap, 6)
        @test find_median(heap) == 4.5
    end
end
