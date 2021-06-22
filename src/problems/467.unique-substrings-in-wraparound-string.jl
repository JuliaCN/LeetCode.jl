# ---
# title: 467. Unique Substrings in Wraparound String
# id: problem467
# author: Indigo
# date: 2021-06-22
# difficulty: Medium
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/unique-substrings-in-wraparound-string/description/>
# hidden: true
# ---
# 
# Consider the string `s` to be the infinite wraparound string of
# "abcdefghijklmnopqrstuvwxyz", so `s` will look like this:
# "...zabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcd....".
# 
# Now we have another string `p`. Your job is to find out how many unique non-
# empty substrings of `p` are present in `s`. In particular, your input is the
# string `p` and you need to output the number of different non-empty substrings
# of `p` in the string `s`.
# 
# **Note:** `p` consists of only lowercase English letters and the size of p
# might be over 10000.
# 
# **Example 1:**  
# 
#     
#     
#     Input: "a"
#     Output: 1
#     
#     Explanation: Only the substring "a" of string "a" is in the string s.
#     
# 
# **Example 2:**  
# 
#     
#     
#     Input: "cac"
#     Output: 2
#     Explanation: There are two substrings "a", "c" of string "cac" in the string s.
#     
# 
# **Example 3:**  
# 
#     
#     
#     Input: "zab"
#     Output: 6
#     Explanation: There are six substrings "z", "a", "b", "za", "ab", "zab" of string "zab" in the string s.
#     
# 
# 
## @lc code=start
using LeetCode

function find_substring_in_wrapround_string(p::String)
    dp = fill(0, 26)
    k = 0
    iscont(prev, cur) = cur == (prev == 'z' ? 'a' : prev + 1)
    for i in 1:length(p)
        k = (i > 1 && iscont(p[i - 1], p[i])) ? k + 1 : 1
        dp[p[i] - 'a' + 1] = dp[p[i] - 'a' + 1] > k ? dp[p[i] - 'a' + 1] : k
    end
    return sum(dp)
end
## @lc code=end
