@testset "119.pascals-triangle-ii.jl" begin
    @test get_pascal_row(3) == [1, 3, 3, 1]
    @test get_pascal_row(5) == [1, 5, 10, 10, 5, 1]
    @test get_pascal_row(6) == [1, 6, 15, 20, 15, 6, 1]
    @test get_pascal_row(23) ==
          [1, 23, 253, 1771, 8855, 33649, 100947, 245157, 490314, 817190, 1144066, 1352078,
           1352078, 1144066, 817190, 490314, 245157, 100947, 33649, 8855, 1771, 253, 23, 1]
end