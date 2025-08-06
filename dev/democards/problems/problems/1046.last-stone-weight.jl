# @lc code=start
using LeetCode

using DataStructures

function last_stone_weight(stones::Vector{Int64})

    heap = PriorityQueue{Tuple{Int64, Int64}, Int64}()
    for (i, stone) in enumerate(stones)
        enqueue!(heap, (stone, i), -stone)  # Use negative stone value for max-heap
    end

    while length(heap) > 1

        largest, _ = dequeue!(heap)
        second_largest, _ = dequeue!(heap)

        if largest != second_largest
            enqueue!(heap, (largest - second_largest, length(heap) + 1), -(largest - second_largest))
        end
    end

    return isempty(heap) ? 0 : first(first(collect(keys(heap))))
end

last_stone_weight([2, 7, 4, 1, 8, 2])

# add your code here:
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

