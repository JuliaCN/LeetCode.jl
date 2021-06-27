# ---
# title: 673. Number of Longest Increasing Subsequence
# id: problem673
# author: Indigo
# date: 2021-06-27
# difficulty: Medium
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/number-of-longest-increasing-subsequence/description/>
# hidden: true
# ---
# 
# Given an integer array `nums`, return _the number of longest increasing
# subsequences._
# 
# **Notice** that the sequence has to be **strictly** increasing.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,3,5,4,7]
#     Output: 2
#     Explanation: The two longest increasing subsequences are [1, 3, 4, 7] and [1, 3, 5, 7].
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [2,2,2,2,2]
#     Output: 5
#     Explanation: The length of longest continuous increasing subsequence is 1, and there are 5 subsequences' length is 1, so output 5.
#     
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 2000`
#   * `-106 <= nums[i] <= 106`
# 
# 
## @lc code=start
using LeetCode

function find_number_of_LIS(nums::Vector{Int})
    len = length(nums)
    len <= 1 && return len
    dp = fill(1, len)
    cnt = copy(dp)
    for i in 2:len, j in 1:(i - 1)
        nums[i] <= nums[j] && continue
        if dp[i] <= dp[j]
            dp[i] = dp[j] + 1
            cnt[i] = cnt[j]
        elseif dp[i] == dp[j] + 1
            cnt[i] += cnt[j]
        end
    end
    max_len = maximum(dp)
    println(max_len)
    return sum(c for (idx, c) in enumerate(cnt) if dp[idx] == max_len)
end
## @lc code=end
