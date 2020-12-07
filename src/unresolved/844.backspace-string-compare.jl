# ---
# title: 844. Backspace String Compare
# id: problem844
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: Two Pointers, Stack
# link: <https://leetcode.com/problems/backspace-string-compare/description/>
# hidden: true
# ---
# 
# Given two strings `S` and `T`, return if they are equal when both are typed
# into empty text editors. `#` means a backspace character.
# 
# Note that after backspacing an empty text, the text will continue empty.
# 
# **Example 1:**
# 
#     
#     
#     Input: S = "ab#c", T = "ad#c"
#     Output: true
#     **Explanation** : Both S and T become "ac".
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: S = "ab##", T = "c#d#"
#     Output: true
#     **Explanation** : Both S and T become "".
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: S = "a##c", T = "#a#c"
#     Output: true
#     **Explanation** : Both S and T become "c".
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: S = "a#c", T = "b"
#     Output: false
#     **Explanation** : S becomes "c" while T becomes "b".
#     
# 
# **Note** :
# 
#   * `1 <= S.length <= 200`
#   * `1 <= T.length <= 200`
#   * `S` and `T` only contain lowercase letters and `'#'` characters.
# 
# **Follow up:**
# 
#   * Can you solve it in `O(N)` time and `O(1)` space?
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
