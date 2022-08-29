@testset "636.exclusive-time-of-functions.jl" begin
    @test exclusive_time(2, ["0:start:0","1:start:2","1:end:5","0:end:6"]) == [3,4]
    @test exclusive_time(1, ["0:start:0","0:start:2","0:end:5","0:start:6","0:end:6","0:end:7"]) == [8]
    @test exclusive_time(2, ["0:start:0","0:start:2","0:end:5","1:start:6","1:end:6","0:end:7"]) == [7, 1]
    @test exclusive_time(2, ["0:start:0","0:start:2","0:end:5","1:start:7","1:end:7","0:end:8"]) == [8, 1]
    @test exclusive_time(1, ["0:start:0","0:end:0"]) == [1]
    @test exclusive_time(2, ["0:start:0","1:start:2","1:end:5","0:end:6", "0:start:10", "0:end:12"]) == [6, 4]
end