@testset "7.reverse-integer.jl" begin
@test reverse_integer(Int32(123)) == 321
@test reverse_integer(Int32(-123)) == -321
end