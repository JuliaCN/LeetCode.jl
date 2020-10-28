@testset "240.search-a-2d-matrix-ii.jl" begin
arr = [
    1   4   7   11  15;
    2   5   8   12  19;
    3   6   9   16  22;
    10  13  14  17  24;
    18  21  23  26  30;
]

@test searchMatrix(arr, 5) == true
@test searchMatrix(arr, 20) == false
end