@testset "967.numbers-with-same-consecutive-differences.jl" begin
    @test nums_same_consec_diff(3, 7) |> Set == [181,292,707,818,929] |> Set
    @test nums_same_consec_diff(2, 1) |> Set == [10,12,21,23,32,34,43,45,54,56,65,67,76,78,87,89,98] |> Set 
    @test nums_same_consec_diff(2, 0) |> Set == [11,22,33,44,55,66,77,88,99] |> Set
    @test nums_same_consec_diff(2, 2) |> Set == [13,20,24,31,35,42,46,53,57,64,68,75,79,86,97] |> Set
end