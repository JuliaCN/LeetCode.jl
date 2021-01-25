@testset "959.regions-cut-by-slashes.jl" begin
    @test regions_by_slashes([
        "\\/",
        "/\\"
      ]) == 4
    @test regions_by_slashes([
        "/\\",
        "\\/"
      ]) == 5
    @test regions_by_slashes([
        "//",
        "/ "
      ]) == 3
    @test regions_by_slashes([
        " /",
        "  "
      ]) == 1
    @test regions_by_slashes([
        " /",
        "/ "
      ]) == 2
end