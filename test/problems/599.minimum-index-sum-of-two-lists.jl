@testset "599.minimum-index-sum-of-two-lists.jl" begin
    list1 = ["Shogun", "Tapioca Express", "Burger King", "KFC"]
    list2 = ["Piatti", "The Grill at Torrey Pines", "Hungry Hunter Steakhouse", "Shogun"]
    list3 = ["KFC", "Shogun", "Burger King"]
    list4 = ["KFC", "Burger King", "Tapioca Express", "Shogun"]
    list5 = ["KNN", "KFC", "Burger King", "Tapioca Express", "Shogun"]
    @test find_restaurant(list1, list2) == ["Shogun"]
    @test find_restaurant(list1, list3) == ["Shogun"]
    @test find_restaurant(list1, list4) == list4
    @test find_restaurant(list1, list5) ==
        ["KFC", "Burger King", "Tapioca Express", "Shogun"]
    @test find_restaurant(["KFC"], ["KFC"]) == ["KFC"]
end
