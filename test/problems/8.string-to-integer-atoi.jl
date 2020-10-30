@testset "8.string-to-integer-atoi.jl" begin
@test my_atoi("   -42") == -42
@test my_atoi("4193 with words") == 4193
@test my_atoi("words and 987") == 0
@test my_atoi("-91283472332") == -2147483648
@test my_atoi("+-0123") == 0
end