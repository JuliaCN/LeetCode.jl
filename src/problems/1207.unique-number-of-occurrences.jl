# ---
# title: 1207. Unique Number of Occurrences
# id: problem1207
# author: Jerry Ling
# date: 2021-11-30
# difficulty: Easy
# categories: Hash Table
# link: <https://leetcode.com/problems/unique-number-of-occurrences/description/>
# hidden: true
# ---
# 
# Given an array of integers `arr`, write a function that returns `true` if and
# only if the number of occurrences of each value in the array is unique.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: arr = [1,2,2,1,1,3]
#     Output: true
#     Explanation:  The value 1 has 3 occurrences, 2 has 2 and 3 has 1. No two values have the same number of occurrences.
# 
# **Example 2:**
# 
#     
#     
#     Input: arr = [1,2]
#     Output: false
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: arr = [-3,0,1,-3,1,1,1,-3,10,0]
#     Output: true
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= arr.length <= 1000`
#   * `-1000 <= arr[i] <= 1000`
# 
# 
## @lc code=start
using LeetCode

function unique_number_of_occurrences(arr::Vector{Int})
    counts = Dict{Int, Int}()
    for a in arr
        counts[a] = get(counts, a, 0) + 1
    end
    vs = values(counts)
    return length(vs) == length(unique(vs))
end

## add your code here:
## @lc code=end
