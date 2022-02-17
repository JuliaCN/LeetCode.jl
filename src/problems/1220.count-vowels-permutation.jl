# ---
# title: 1220. Count Vowels Permutation
# id: problem1220
# author: zhwang
# date: 2022-01-22
# difficulty: Hard
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/count-vowels-permutation/description/>
# hidden: true
# ---
# 
# Given an integer `n`, your task is to count how many strings of length `n` can
# be formed under the following rules:
# 
#   * Each character is a lower case vowel (`'a'`, `'e'`, `'i'`, `'o'`, `'u'`)
#   * Each vowel `'a'` may only be followed by an `'e'`.
#   * Each vowel `'e'` may only be followed by an `'a'` or an `'i'`.
#   * Each vowel `'i'` **may not** be followed by another `'i'`.
#   * Each vowel `'o'` may only be followed by an `'i'` or a `'u'`.
#   * Each vowel `'u'` may only be followed by an `'a'.`
# 
# Since the answer may be too large, return it modulo `10^9 + 7.`
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: n = 1
#     Output: 5
#     Explanation: All possible strings are: "a", "e", "i" , "o" and "u".
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: n = 2
#     Output: 10
#     Explanation: All possible strings are: "ae", "ea", "ei", "ia", "ie", "io", "iu", "oi", "ou" and "ua".
#     
# 
# **Example 3:  **
# 
#     
#     
#     Input: n = 5
#     Output: 68
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= n <= 2 * 10^4`
# 
# 
## @lc code=start
using LeetCode

function count_vowel_permutation(n::Int)::Int
    table = Dict{Char,Int}(i => 1 for i in "aeiou")
    quotient = 10^9 + 7
    for _ in 1:(n - 1)
        a = table['e'] + table['i'] + table['u']
        e = table['a'] + table['i']
        i = table['e'] + table['o']
        o = table['i']
        u = table['i'] + table['o']
        table['a'], table['e'], table['i'], table['o'], table['u'] = map(
            x -> mod(x, quotient), [a, e, i, o, u]
        )
    end
    return mod(sum(values(table)), quotient)
end

## @lc code=end
