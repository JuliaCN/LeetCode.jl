# ---
# title: 17. Letter Combinations of a Phone Number
# id: problem17
# author: zhwang
# date: 2022-03-17
# difficulty: Medium
# categories: String, Backtracking, Depth-first Search, Recursion
# link: <https://leetcode.com/problems/letter-combinations-of-a-phone-number/description/>
# hidden: true
# ---
# 
# Given a string containing digits from `2-9` inclusive, return all possible
# letter combinations that the number could represent. Return the answer in
# **any order**.
# 
# A mapping of digit to letters (just like on the telephone buttons) is given
# below. Note that 1 does not map to any letters.
# 
# ![](https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Telephone-
# keypad2.svg/200px-Telephone-keypad2.svg.png)
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: digits = "23"
#     Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: digits = ""
#     Output: []
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: digits = "2"
#     Output: ["a","b","c"]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= digits.length <= 4`
#   * `digits[i]` is a digit in the range `['2', '9']`.
# 
# 
## @lc code=start
using LeetCode

function letter_combinations(digits::String)::Vector{String}
    isempty(digits) && return String[]
    table = Dict{Char,String}(
        '2' => "abc",
        '3' => "def",
        '4' => "ghi",
        '5' => "jkl",
        '6' => "mno",
        '7' => "pqrs",
        '8' => "tuv",
        '9' => "wxyz",
    )
    res = [""]
    for i in digits
        res = [s1 * s2 for s1 in res for s2 in table[i]]
    end
    return res
end
## @lc code=end
