@testset "331.verify-preorder-serialization-of-a-binary-tree.jl" begin
    @test is_valid_verialization("9,3,4,#,#,1,#,#,2,#,6,#,#") == true
    @test is_valid_verialization("1,#") == false
    @test is_valid_verialization("9,#,#,1") == false
end