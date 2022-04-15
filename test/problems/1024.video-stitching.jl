@testset "1024.video-stitching.jl" begin
    @test video_stitching([[0, 4], [2, 8]], 5) == 2
    @test video_stitching(
        [
            [0, 1],
            [6, 8],
            [0, 2],
            [5, 6],
            [0, 4],
            [0, 3],
            [6, 7],
            [1, 3],
            [4, 7],
            [1, 4],
            [2, 5],
            [2, 6],
            [3, 4],
            [4, 5],
            [5, 7],
            [6, 9],
        ],
        9,
    ) == 3
    @test video_stitching([[0, 1], [1, 2]], 5) == -1
    @test video_stitching([[0, 2], [4, 6], [8, 10], [1, 9], [1, 5], [5, 9]], 10) == 3
end
