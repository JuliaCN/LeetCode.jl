@testset "1598.crawler-log-folder.jl" begin
    @test min_operations_1198(["d1/","d2/","../","d21/","./"]) == 2
    @test min_operations_1198(["d1/","d2/","./","d3/","../","d31/"]) == 3
    @test min_operations_1198(["d1/","../","../","../"]) == 0
end