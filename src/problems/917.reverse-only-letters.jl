# ---
# title: 917. Reverse Only Letters
# id: problem917
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: String
# link: <https://leetcode.com/problems/reverse-only-letters/description/>
# hidden: true
# ---
# 
# Given a string `S`, return the "reversed" string where all characters that are
# not a letter stay in the same place, and all letters reverse their positions.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: "ab-cd"
#     Output: "dc-ba"
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: "a-bC-dEf-ghIj"
#     Output: "j-Ih-gfE-dCba"
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: "Test1ng-Leet=code-Q!"
#     Output: "Qedo1ct-eeLg=ntse-T!"
#     
# 
# 
# 
# **Note:**
# 
#   1. `S.length <= 100`
#   2. `33 <= S[i].ASCIIcode <= 122` 
#   3. `S` doesn't contain `\` or `"`
# 
# 
## @lc code=start
using LeetCode

function reverse_only_letters(s::String)
    chars = codeunits(s)[:]
    letters = @view(chars[isletter.(Char.(chars))])
    reverse!(letters)
    return String(chars)
end
## @lc code=end
