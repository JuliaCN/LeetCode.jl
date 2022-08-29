@testset "1374.generate-a-string-with-characters-that-have-odd-counts.jl" begin
    using DataStructures
    function check1374(f::Function, n::Int)
        res = f(n)
        all(∈('a':'z'), res) || return false
        ## using DataStructures
        return all(isodd, values(counter(res)))
    end
    @test check1374(generate_the_string, 4)
    @test check1374(generate_the_string, 2)
    @test check1374(generate_the_string, 7)
end
