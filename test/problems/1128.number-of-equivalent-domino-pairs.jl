@testset "1128.number-of-equivalent-domino-pairs.jl" begin
@test 1 == num_equiv_domino_pairs([(1,2), (2,1), (3,4), (5,6)])
end