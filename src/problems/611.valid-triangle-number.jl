# ---
# title: 611. Valid Triangle Number
# id: problem611
# author: Indigo
# date: 2021-06-26
# difficulty: Medium
# categories: Array
# link: <https://leetcode.com/problems/valid-triangle-number/description/>
# hidden: true
# ---
# 
# Given an array consists of non-negative integers, your task is to count the
# number of triplets chosen from the array that can make triangles if we take
# them as side lengths of a triangle.
# 
# **Example 1:**  
# 
#     
#     
#     Input: [2,2,3,4]
#     Output: 3
#     Explanation:
#     Valid combinations are: 
#     2,3,4 (using the first 2)
#     2,3,4 (using the second 2)
#     2,2,3
#     
# 
# **Note:**  
# 
#   1. The length of the given array won't exceed 1000.
#   2. The integers in the given array are in the range of [0, 1000].
# 
# 
## @lc code=start
using LeetCode

function triangle_number(nums::Vector{Int})
    res, len = 0, length(nums)
    sort!(nums)
    @inbounds for i in 1:len-2
        nums[i] == 0 && continue
        k = i + 2
        for j in i+1:len-1
            while k <= len && nums[i] + nums[j] > nums[k]; k += 1; end
            res += k - j - 1
        end
    end
    return res
end
## @lc code=end
