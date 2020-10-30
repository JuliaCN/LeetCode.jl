@testset "901.online-stock-span.jl" begin
s = StockSpanner()
@test next!(s, 100) == 1
@test next!(s, 80) == 1
@test next!(s, 60) == 1
@test next!(s, 70) == 2
@test next!(s, 60) == 1
@test next!(s, 75) == 4
@test next!(s, 85) == 6
end