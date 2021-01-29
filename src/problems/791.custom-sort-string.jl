# ---
# title: 791. Custom Sort String
# id: problem791
# author: Indigo
# date: 2021-01-29
# difficulty: Medium
# categories: String
# link: <https://leetcode.com/problems/custom-sort-string/description/>
# hidden: true
# ---
# 
# `S` and `T` are strings composed of lowercase letters. In `S`, no letter
# occurs more than once.
# 
# `S` was sorted in some custom order previously. We want to permute the
# characters of `T` so that they match the order that `S` was sorted. More
# specifically, if `x` occurs before `y` in `S`, then `x` should occur before
# `y` in the returned string.
# 
# Return any permutation of `T` (as a string) that satisfies this property.
# 
#     
#     
#     **Example :**
#     Input: 
#     S = "cba"
#     T = "abcd"
#     Output: "cbad"
#     Explanation: 
#     "a", "b", "c" appear in S, so the order of "a", "b", "c" should be "c", "b", and "a". 
#     Since "d" does not appear in S, it can be at any position in T. "dcba", "cdba", "cbda" are also valid outputs.
#     
# 
# 
# 
# **Note:**
# 
#   * `S` has length at most `26`, and no character is repeated in `S`.
#   * `T` has length at most `200`.
#   * `S` and `T` consist of lowercase letters only.
# 
# 
## @lc code=start
using LeetCode

function custom_sort_string(S::String, T::String)
    letter_rank = fill(0, 128)
    for (idx, ch) in enumerate(codeunits(S)) 
        letter_rank[ch] = idx
    end
    u = codeunits(T)[:]
    sort!(u, by = x -> letter_rank[x])
    String(u)
end
## @lc code=end
