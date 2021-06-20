@testset "400.nth-digit.jl" begin
    @test find_nth_digit(3) == 3
    @test find_nth_digit(11) == 0
    for (i, j) in
        zip([500, 501, 502, 503, 504, 505, 506, 507, 508, 513, 514, 515, 516, 517, 518, 519,
             520], [0, 3, 2, 0, 4, 2, 0, 5, 2, 7, 2, 0, 8, 2, 0, 9, 2])
        @test find_nth_digit(i) == j
    end
end
