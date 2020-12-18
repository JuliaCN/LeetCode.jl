@testset "389.find-the-difference.jl" begin
import Random.shuffle!
    @test find_the_difference("abcd", "abcde") == 'e'
    @test find_the_difference("", "y") == 'y'
    let 
        rd_chars = rand('a':'z', 10000)
        s = *(rd_chars...);
        ch = rand('a':'z')
        push!(rd_chars, ch)
        t = *(shuffle!(rd_chars)...)
        @test find_the_difference(s, t) == ch
    end
end
