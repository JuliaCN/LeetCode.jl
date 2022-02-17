@testset "65.valid-number.jl" begin
    true_data = [
        "2",
        "0089",
        "-0.1",
        "+3.14",
        "4.",
        "-.9",
        "2e10",
        "-90E3",
        "3e+7",
        "+6e-1",
        "53.5e93",
        "-123.456e789",
    ]
    false_data = [
        "abc", "1a", "1e", "e3", "99e2.5", "--6", "-+3", "95a54e53", "3.5e+3.5e+3.5"
    ]
    @test all(is_number_65(s) for s in true_data)
    @test !any(is_number_65(s) for s in false_data)
end
