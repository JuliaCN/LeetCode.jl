@testset "344.reverse-string.jl" begin
    s = ['h', 'e', 'l', 'l', 'o']
    reverse_string!(s)
    @test s == ['o', 'l', 'l', 'e', 'h']

    s = ['H', 'a', 'n', 'n', 'a', 'h']
    reverse_string!(s)
    @test s == ['h', 'a', 'n', 'n', 'a', 'H']
end
