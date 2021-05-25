@testset "709.to-lower-case.jl" begin
    @test to_lower_case("QWaqwfkjAvaOdEakgbFbk") == "qwaqwfkjavaodeakgbfbk"
end