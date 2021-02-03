# ---
# title: 485. Max Consecutive Ones
# id: problem485
# author: Indigo
# date: 2021-02-03
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/max-consecutive-ones/description/>
# hidden: true
# ---
# 
# Given a binary array, find the maximum number of consecutive 1s in this array.
# 
# **Example 1:**  
# 
#     
#     
#     Input: [1,1,0,1,1,1]
#     Output: 3
#     Explanation: The first two digits or the last three digits are consecutive 1s.
#         The maximum number of consecutive 1s is 3.
#     
# 
# **Note:**
# 
#   * The input array will only contain `0` and `1`.
#   * The length of input array is a positive integer and will not exceed 10,000
# 
# 
## @lc code=start
using LeetCode

function find_max_consecutive_ones(nums::Vector{Int})
    cnt, tmp = 0, 0
    for num in nums
        num == 1 ? tmp += 1 : tmp = 0
        cnt = max(tmp, cnt)
    end
    return max(tmp, cnt)
end
## @lc code=end
