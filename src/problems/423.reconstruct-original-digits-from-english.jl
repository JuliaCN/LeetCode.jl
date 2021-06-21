# ---
# title: 423. Reconstruct Original Digits from English
# id: problem423
# author: Indigo
# date: 2021-06-20
# difficulty: Medium
# categories: Math
# link: <https://leetcode.com/problems/reconstruct-original-digits-from-english/description/>
# hidden: true
# ---
# 
# Given a **non-empty** string containing an out-of-order English representation
# of digits `0-9`, output the digits in ascending order.
# 
# **Note:**  
# 
#   1. Input contains only lowercase English letters.
#   2. Input is guaranteed to be valid and can be transformed to its original digits. That means invalid inputs such as "abc" or "zerone" are not permitted.
#   3. Input length is less than 50,000.
# 
# **Example 1:**  
# 
#     
#     
#     Input: "owoztneoer"
#     
#     Output: "012"
#     
# 
# **Example 2:**  
# 
#     
#     
#     Input: "fviefuro"
#     
#     Output: "45"
#     
# 
# 
## @lc code=start
using LeetCode

function original_digits(s::String)
    cnt = counter(s)
    n0 = cnt['z']
    n2 = cnt['w']
    n8 = cnt['g']
    n6 = cnt['x']
    n3 = cnt['t'] - n2 - n8
    n4 = cnt['r'] - n3 - n0
    n7 = cnt['s'] - n6
    n1 = cnt['o'] - n4 - n2 - n0
    n5 = cnt['v'] - n7
    n9 = cnt['i'] - n8 - n6 - n5
    ns = (n0, n1, n2, n3, n4, n5, n6, n7, n8, n9)
    return join(string(i - 1)^n for (i, n) in enumerate(ns))
end
## @lc code=end
