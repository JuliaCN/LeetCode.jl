@testset "324.wiggle-sort-ii.jl" begin
    res = [1,5,1,1,6,4]
    wiggle_sort!(res)
    for i in 1:2:length(res)-1
        @test res[i] < res[i + 1]
    end
    for i in 2:2:length(res)-1
        @test res[i] > res[i + 1]
    end
end
