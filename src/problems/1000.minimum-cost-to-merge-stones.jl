# ---
# title: 1000. Minimum Cost to Merge Stones
# id: problem1000
# author: Indigo
# date: 2021-02-18
# difficulty: Hard
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/minimum-cost-to-merge-stones/description/>
# hidden: true
# ---
# 
# There are `N` piles of stones arranged in a row.  The `i`-th pile has
# `stones[i]` stones.
# 
# A _move_ consists of merging **exactly  `K` consecutive** piles into one pile,
# and the cost of this move is equal to the total number of stones in these `K`
# piles.
# 
# Find the minimum cost to merge all piles of stones into one pile.  If it is
# impossible, return `-1`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: stones = [3,2,4,1], K = 2
#     Output: 20
#     Explanation:
#     We start with [3, 2, 4, 1].
#     We merge [3, 2] for a cost of 5, and we are left with [5, 4, 1].
#     We merge [4, 1] for a cost of 5, and we are left with [5, 5].
#     We merge [5, 5] for a cost of 10, and we are left with [10].
#     The total cost was 20, and this is the minimum possible.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: stones = [3,2,4,1], K = 3
#     Output: -1
#     Explanation: After any merge operation, there are 2 piles left, and we can't merge anymore.  So the task is impossible.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: stones = [3,5,1,2,6], K = 3
#     Output: 25
#     Explanation:
#     We start with [3, 5, 1, 2, 6].
#     We merge [5, 1, 2] for a cost of 8, and we are left with [3, 8, 6].
#     We merge [3, 8, 6] for a cost of 17, and we are left with [17].
#     The total cost was 25, and this is the minimum possible.
#     
# 
# 
# 
# **Note:**
# 
#   * `1 <= stones.length <= 30`
#   * `2 <= K <= 30`
#   * `1 <= stones[i] <= 100`
# 
# 
## @lc code=start
using LeetCode

function merge_stones(stones::Vector{Int}, K::Int)
    len = length(stones)
    (len - 1) % (K - 1) != 0 && return -1
    pre = fill(0, len + 1)
    cumsum!(@view(pre[2:len + 1]), stones)
    dp = fill(0, len, len)
    for m in K:len, i in 1:(len - m + 1)
        dp[i, i + m - 1] = minimum(dp[i, k] + dp[k + 1, i + m - 1]
                               for k in i:(K - 1):(i + m - 2)) +
                           ((m - 1) % (K - 1) == 0 ? pre[i + m] - pre[i] : 0)
    end
    return dp[1, len]
end
## @lc code=end
