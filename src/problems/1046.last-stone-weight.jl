# ---
# title: 1046. Last Stone Weight
# id: problem1046
# author: Queensley E
# date: 2024-12-11
# difficulty: Easy
# categories: Heap, Greedy
# link: <https://leetcode.com/problems/last-stone-weight/description/>
# hidden: true
# ---
# 
# We have a collection of stones, each stone has a positive integer weight.
# 
# Each turn, we choose the two **heaviest**  stones and smash them together.
# Suppose the stones have weights `x` and `y` with `x <= y`.  The result of this
# smash is:
# 
#   * If `x == y`, both stones are totally destroyed;
#   * If `x != y`, the stone of weight `x` is totally destroyed, and the stone of weight `y` has new weight `y-x`.
# 
# At the end, there is at most 1 stone left.  Return the weight of this stone
# (or 0 if there are no stones left.)
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: [2,7,4,1,8,1]
#     Output: 1
#     Explanation:
#     We combine 7 and 8 to get 1 so the array converts to [2,4,1,1,1] then,
#     we combine 2 and 4 to get 2 so the array converts to [2,1,1,1] then,
#     we combine 2 and 1 to get 1 so the array converts to [1,1,1] then,
#     we combine 1 and 1 to get 0 so the array converts to [1] then that's the value of last stone.
# 
# 
# 
# **Note:**
# 
#   1. `1 <= stones.length <= 30`
#   2. `1 <= stones[i] <= 1000`
# 
# 
## @lc code=start
# using LeetCode

using DataStructures

function last_stone_weight(stones::Vector{Int64})
    # Create a PriorityQueue with unique identifiers for each stone
    heap = PriorityQueue{Tuple{Int64, Int64}, Int64}()
    for (i, stone) in enumerate(stones)
        enqueue!(heap, (stone, i), -stone)  # Use negative stone value for max-heap
    end

    while length(heap) > 1
        # Extract the two largest stones
        largest, _ = dequeue!(heap)
        second_largest, _ = dequeue!(heap)

        # If they are not the same, calculate the difference and enqueue it
        if largest != second_largest
            enqueue!(heap, (largest - second_largest, length(heap) + 1), -(largest - second_largest))
        end
    end

    # Return the last stone or 0 if the heap is empty
    return isempty(heap) ? 0 : first(first(collect(keys(heap))))
end

last_stone_weight([2, 7, 4, 1, 8, 2])

## add your code here:
## @lc code=end
