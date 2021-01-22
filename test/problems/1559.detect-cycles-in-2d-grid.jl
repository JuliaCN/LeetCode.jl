@testset "" begin
    @test contains_cycle([["a","a","a","a"],
                        ["a","b","b","a"],
                        ["a","b","b","a"],
                        ["a","a","a","a"]]) == true
    @test contains_cycle([["c","c","c","a"],
                        ["c","d","c","c"],
                        ["c","c","e","c"],
                        ["f","c","c","c"]]) == true
    @test contains_cycle([["a","b","b"],
                        ["b","z","b"],
                        ["b","b","a"]]) == false
end