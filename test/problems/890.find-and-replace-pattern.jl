@testset "890.find-and-replace-pattern.jl" begin
    @test find_and_replace_pattern(["abc", "deq", "mee", "aqq", "dkd", "ccc"], "abb") ==
          ["mee", "aqq"]
end