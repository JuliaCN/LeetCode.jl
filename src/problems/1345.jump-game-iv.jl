# ---
# title: 1345. Jump Game IV
# id: problem1345
# author: zhwang
# date: 2022-01-22
# difficulty: Hard
# categories: Breadth-first Search
# link: <https://leetcode.com/problems/jump-game-iv/description/>
# hidden: true
# ---
# 
# Given an array of integers `arr`, you are initially positioned at the first
# index of the array.
# 
# In one step you can jump from index `i` to index:
# 
#   * `i + 1` where: `i + 1 < arr.length`.
#   * `i - 1` where: `i - 1 >= 0`.
#   * `j` where: `arr[i] == arr[j]` and `i != j`.
# 
# Return _the minimum number of steps_ to reach the **last index** of the array.
# 
# Notice that you can not jump outside of the array at any time.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: arr = [100,-23,-23,404,100,23,23,23,3,404]
#     Output: 3
#     Explanation: You need three jumps from index 0 --> 4 --> 3 --> 9. Note that index 9 is the last index of the array.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: arr = [7]
#     Output: 0
#     Explanation: Start index is the last index. You don't need to jump.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: arr = [7,6,9,6,9,6,9,7]
#     Output: 1
#     Explanation: You can jump directly from index 0 to index 7 which is last index of the array.
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: arr = [6,1,9]
#     Output: 2
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: arr = [11,22,7,7,7,7,7,7,7,22,13]
#     Output: 3
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= arr.length <= 5 * 10^4`
#   * `-10^8 <= arr[i] <= 10^8`
# 
# 
## @lc code=start
using LeetCode

function min_jumps_1345(arr::Vector{Int})::Int
    ## data initialize
    n, step = length(arr), 0
    nums = Dict{Int,Set}(x => Set{Int}() for x in Set{Int}(arr))
    for (i, val) in enumerate(arr)
        push!(nums[val], i)
    end
    ## BFS Search
    up_nums, up_inds, inds = Set{Int}([arr[1]]), Set{Int}([1]), Set{Int}([0, 1, n + 1])
    while !(n in up_inds)
        down_inds = Set{Int}()
        ## indexs by numbers
        for num in up_nums
            union!(down_inds, nums[num])
        end
        ## nearby indexs
        for i in up_inds
            push!(down_inds, i - 1)
            push!(down_inds, i + 1)
        end
        ## remove extra indexs
        for i in down_inds
            i in inds && delete!(down_inds, i)
        end
        up_inds, up_nums = down_inds, Set{Int}(arr[i] for i in down_inds)
        union!(inds, up_inds)
        step += 1
    end
    return step
end

## @lc code=end
