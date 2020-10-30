@testset "90.subsets-ii.jl" begin
@test subsets_with_dup([1,2,2]) == [Int64[], [1], [2], [1, 2], [2, 2], [1, 2, 2]]
@test subsets_with_dup([1,2,2,2]) == [Int64[], [1], [2], [1, 2], [2, 2], [1, 2, 2], [2, 2, 2], [1, 2, 2, 2]]
end
