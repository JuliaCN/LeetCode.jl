@testset "208.implement-trie-prefix-tree.jl" begin
    @testset "208 case 1" begin
        node = PrefixNode()
        insert_node!(node, "apple")
        @test search_word(node, "apple")
        @test !search_word(node, "app")
        @test starts_with(node, "app")
        insert_node!(node, "app")
        @test search_word(node, "app")
    end
end
