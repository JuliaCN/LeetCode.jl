# ---
# title: 859. Buddy Strings
# id: problem859
# author: Tian Jun
# date: 2020-11-14
# difficulty: Easy
# categories: String
# link: <https://leetcode.com/problems/buddy-strings/description/>
# hidden: true
# ---
# 
# Given two strings `A` and `B` of lowercase letters, return `true` _if you can
# swap two letters in_`A` _so the result is equal to_`B` _, otherwise,
# return_`false` _._
# 
# Swapping letters is defined as taking two indices `i` and `j` (0-indexed) such
# that `i != j` and swapping the characters at `A[i]` and `A[j]`. For example,
# swapping at indices `0` and `2` in `"abcd"` results in `"cbad"`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: A = "ab", B = "ba"
#     Output: true
#     **Explanation** **:** You can swap A[0] = 'a' and A[1] = 'b' to get "ba", which is equal to B.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: A = "ab", B = "ab"
#     Output: false
#     **Explanation** **:** The only letters you can swap are A[0] = 'a' and A[1] = 'b', which results in "ba" != B.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: A = "aa", B = "aa"
#     Output: true
#     **Explanation** **:** You can swap A[0] = 'a' and A[1] = 'a' to get "aa", which is equal to B.
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: A = "aaaaaaabc", B = "aaaaaaacb"
#     Output: true
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: A = "", B = "aa"
#     Output: false
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= A.length <= 20000`
#   * `0 <= B.length <= 20000`
#   * `A` and `B` consist of lowercase letters.
# 
# 
## @lc code=start
using LeetCode

function buddy_strings(A::String, B::String)::Bool
    if length(A) == length(B)
        different_pairs = Pair{Char,Char}[]
        for (a, b) in zip(A, B)
            if a != b
                push!(different_pairs, a => b)
            end
        end
        if length(different_pairs) == 0
            ## check if A contains at least 2 duplicate letters
            length(Set(A)) < length(A)
        elseif length(different_pairs) == 2
            ((x, y), (z, w)) = different_pairs
            x == w && y == z
        else
            false
        end
    else
        false
    end
end
## @lc code=end
