@testset "382.linked-list-random-node.jl" begin
    node = ListNode{Int}([1, 2, 2, 3])
    @test begin
        freq = Dict{Int,Int}(1 => 0, 2 => 0, 3 => 0)
        for _ in 1:10000
            freq[get_random(node)] += 1
        end
        num = freq[1] + freq[2] + freq[3]
        !(freq[1] == 2 * freq[2] == freq[3]) &&
            abs(freq[1] / num - freq[3] / num) + abs(freq[1] / num - freq[2] / num / 2) <= 0.1
    end
end
