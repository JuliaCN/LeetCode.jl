@testset "966.vowel-spellchecker.jl" begin
    @test spellchecker(["KiTe", "kite", "hare", "Hare"],
                       ["kite", "Kite", "KiTe", "Hare", "HARE", "Hear", "hear", "keti",
                        "keet", "keto"]) ==
          ["kite", "KiTe", "KiTe", "Hare", "hare", "", "", "KiTe", "", "KiTe"]
end