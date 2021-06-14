@testset "343.integer-break.jl" begin
    for (i, j) in zip([2, 4, 5, 6, 7, 8, 9, 12, 46, 53],
            [1, 4, 6, 9, 12, 18, 27, 81, 19131876, 258280326])
        @test integer_break(i) == j
    end
end
