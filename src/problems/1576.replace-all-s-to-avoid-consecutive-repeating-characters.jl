# ---
# title: 1576. Replace All ?'s to Avoid Consecutive Repeating Characters
# id: problem1576
# author: Indigo
# date: 2021-01-27
# difficulty: Easy
# categories: String
# link: <https://leetcode.com/problems/replace-all-s-to-avoid-consecutive-repeating-characters/description/>
# hidden: true
# ---
# 
# Given a string `s` containing only lower case English letters and the '?'
# character, convert **all** the '?' characters into lower case letters such
# that the final string does not contain any **consecutive repeating
# **characters. You **cannot** modify the non '?' characters.
# 
# It is **guaranteed** that there are no consecutive repeating characters in the
# given string **except** for '?'.
# 
# Return the final string after all the conversions (possibly zero) have been
# made. If there is more than one solution, return any of them. It can be shown
# that an answer is always possible with the given constraints.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "?zs"
#     Output: "azs"
#     **Explanation** : There are 25 solutions for this problem. From "azs" to "yzs", all are valid. Only "z" is an invalid modification as the string will consist of consecutive repeating characters in "zzs".
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "ubv?w"
#     Output: "ubvaw"
#     **Explanation** : There are 24 solutions for this problem. Only "v" and "w" are invalid modifications as the strings will consist of consecutive repeating characters in "ubvvw" and "ubvww".
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = "j?qg??b"
#     Output: "jaqgacb"
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: s = "??yw?ipkj?"
#     Output: "acywaipkja"
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= s.length <= 100`
#   * `s` contains only lower case English letters and `'?'`.
# 
# 
## @lc code=start
using LeetCode

function modify_string(s::String)
    char_vec = collect(s)
    for i in 1:length(char_vec)
        if char_vec[i] == '?'
            char_vec[i] = 'a'
            (i > 1 && char_vec[i - 1] == 'a') && (char_vec[i] += 1)
            (i < length(char_vec) && char_vec[i + 1] == char_vec[i]) && (char_vec[i] += 1) 
            (i > 1 && char_vec[i - 1] == char_vec[i]) && (char_vec[i] += 1)
        end
    end
    return join(char_vec)
end
## @lc code=end
