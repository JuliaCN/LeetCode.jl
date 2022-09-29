@testset "1078.occurrences-after-bigram.jl" begin
    @test occurrences_after_bigram(
        "alice is a good girl she is a good student", "a", "good"
    ) == ["girl", "student"]
    @test occurrences_after_bigram("we will we will rock you", "we", "will") ==
        ["we", "rock"]
end
