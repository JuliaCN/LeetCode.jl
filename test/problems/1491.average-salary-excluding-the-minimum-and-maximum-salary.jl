@testset "1491.average-salary-excluding-the-minimum-and-maximum-salary.jl" begin
    @test average_salary_excluding_mami([4000, 3000, 1000, 2000]) ≈ 2500.00000
    @test average_salary_excluding_mami([1000, 2000, 3000]) ≈ 2000.00000
    @test average_salary_excluding_mami([6000, 5000, 4000, 3000, 2000, 1000]) ≈ 3500.00000
    @test average_salary_excluding_mami([8000, 9000, 2000, 3000, 6000, 1000]) ≈ 4750.00000
end
