@testset "790.domino-and-tromino-tiling.jl" begin
    let 
        res = [1, 2, 5, 11, 24, 53, 117, 258, 569, 1255]
        for i in 1:10
            @test num_tilings(i) == res[i]
        end
    end 
end