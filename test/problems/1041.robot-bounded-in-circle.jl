@testset "1041.robot-bounded-in-circle.jl" begin
    @test is_robot_bounded("GGLLGG") == true
    @test is_robot_bounded("GG") == false
    @test is_robot_bounded("GL") == false
end
