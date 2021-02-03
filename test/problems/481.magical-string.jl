@testset "481.magical-string.jl" begin
    let 
        res = [1, 1, 1, 2, 3, 3, 4, 4, 4, 5]
        for i in 1:10
            @test magical_string(i) == res[i]        
        end
    end
end