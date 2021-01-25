@testset "960.delete-columns-to-make-sorted-iii.jl" begin
    @test min_deletion_size(["babca","bbazb"]) == 3
    @test min_deletion_size(["edcba"]) == 4
    @test min_deletion_size(["ghi","def","abc"]) == 0
end