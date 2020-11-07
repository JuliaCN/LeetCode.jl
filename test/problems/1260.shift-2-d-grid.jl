@testset "1260.shift-2-d-grid.jl" begin
    A = [1 2 3; 4 5 6; 7 8 9;]
    @test shift_grid(A, 1) == [9 1 2; 3 4 5; 6 7 8]

    A = [
        3 8 1 9
        19 7 2 5
        4 6 11 10
        12 0 21 13
    ]

    A′ = [
        12 0 21 13
        3 8 1 9
        19 7 2 5
        4 6 11 10
    ]
    @test shift_grid(A, 4) == A′
end