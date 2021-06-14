@testset "319.bulb-switcher.jl" begin
    @test bulb_switch(3) == 1
    @test bulb_switch(4) == 2
    @test bulb_switch(5) == 2
    @test bulb_switch(31096836) == 5576
end