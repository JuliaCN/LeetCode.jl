@testset "633.sum-of-square-numbers.jl" begin
    for (i, j) in
        zip([1, 2, 3, 4, 5, 483761424, 1547186596, 1749724464, 45290257, 2094715898,
             1836642396, 896826837, 317827104, 1421291910, 1305562843, 1168481452],
            [true, true, false, true, true, false, true, false, true, false, false, false,
             false, false, false, false])
        @test judge_square_sum(i) == j
    end
end
