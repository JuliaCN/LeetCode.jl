@testset "679.24-game.jl" begin
@test judgePoint24([1, 2, 1, 2]) == false

# julia> 8 / (2 - (5 / 3))
# 24.000000000000007
@test judgePoint24([8,2,5,3]) == true
end