# ---
# title: 395. Longest Substring with At Least K Repeating Characters
# id: problem395
# author: Indigo
# date: 2021-02-27
# difficulty: Medium
# categories: Divide and Conquer, Recursion, Sliding Window
# link: <https://leetcode.com/problems/longest-substring-with-at-least-k-repeating-characters/description/>
# hidden: true
# ---
# 
# Given a string `s` and an integer `k`, return _the length of the longest
# substring of_ `s` _such that the frequency of each character in this substring
# is greater than or equal to_ `k`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "aaabb", k = 3
#     Output: 3
#     Explanation: The longest substring is "aaa", as 'a' is repeated 3 times.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "ababbc", k = 2
#     Output: 5
#     Explanation: The longest substring is "ababb", as 'a' is repeated 2 times and 'b' is repeated 3 times.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= s.length <= 104`
#   * `s` consists of only lowercase English letters.
#   * `1 <= k <= 105`
# 
# 
## @lc code=start
using LeetCode

function longest_substring_395(s::String, k::Int)
    function dfs(l::Int, r::Int)
        l > r && return 0
        cnt = counter(SubString(s, l, r))
        split_set = Int[]
        for i in l:r
            (cnt[s[i]] < k) && push!(split_set, i)
        end
        isempty(split_set) && return r - l + 1
        lft, res = l, 0
        for rt in split_set 
            res = max(res, dfs(lft, rt - 1))
            lft = rt + 1
        end
        res
    end
    dfs(1, length(s))
end
## @lc code=end
