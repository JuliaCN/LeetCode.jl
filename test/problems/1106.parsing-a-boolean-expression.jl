@testset "1106.parsing-a-boolean-expression.jl" begin
    @test parse_bool_expr("|(&(t,f,t),!(t))") == false
    @test parse_bool_expr("&(t,f)") == false
    @test parse_bool_expr("|(f,t)") == true
    @test parse_bool_expr("!(f)") == true
end
