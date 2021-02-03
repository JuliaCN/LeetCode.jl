@testset "482.license-key-formatting.jl" begin
    @test license_key_formatting("2-5g-3-J", 2) == "2-5G-3J"
    @test license_key_formatting("5F3Z-2e-9-w", 4) == "5F3Z-2E9W"
end