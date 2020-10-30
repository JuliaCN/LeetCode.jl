@testset "576.out-of-boundary-paths.jl" begin
@test find_paths(2, 2, 2, 1, 1) == 6

@test find_paths(1, 3, 1, 1, 2) == 2
@test find_paths(1, 3, 2, 1, 2) == 8
@test find_paths(1, 3, 3, 1, 2) == 12

end