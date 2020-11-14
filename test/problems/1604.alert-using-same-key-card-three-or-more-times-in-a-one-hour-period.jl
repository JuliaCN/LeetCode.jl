@testset "1604.alert-using-same-key-card-three-or-more-times-in-a-one-hour-period.jl" begin
    @test alert_names(
        ["daniel", "daniel", "daniel", "luis", "luis", "luis", "luis"],
        ["10:00", "10:40", "11:00", "09:00", "11:00", "13:00", "15:00"],
    ) == ["daniel"]
    @test alert_names(
        ["leslie", "leslie", "leslie", "clare", "clare", "clare", "clare"],
        ["13:00", "13:20", "14:00", "18:00", "18:51", "19:30", "19:49"],
    ) == ["clare", "leslie"]
    @test alert_names(["john", "john", "john"], ["23:58", "23:59", "00:01"]) == String[]
    @test alert_names(
        ["alice", "alice", "alice", "bob", "bob", "bob", "bob"],
        ["12:01", "12:00", "18:00", "21:00", "21:20", "21:30", "23:00"],
    ) == ["bob"]
end
