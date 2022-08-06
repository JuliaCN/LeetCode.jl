@testset "929.unique-email-addresses.jl" begin
    @test num_unique_emails(["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]) == 2
    @test num_unique_emails(["a@leetcode.com","b@leetcode.com","c@leetcode.com"]) == 3
end