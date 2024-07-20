# ---
# title: 38. Count and Say
# id: problem38
# author: Pixia1234
# date: 2024-07-17
# difficulty: Easy
# categories: String
# link: <https://leetcode.com/problems/count-and-say/description/>
# hidden: true
# ---
# 
# The **count-and-say** sequence is a sequence of digit strings defined by the
# recursive formula:
# 
#   * `countAndSay(1) = "1"`
#   * `countAndSay(n)` is the way you would "say" the digit string from `countAndSay(n-1)`, which is then converted into a different digit string.
# 
# To determine how you "say" a digit string, split it into the **minimal**
# number of groups so that each group is a contiguous section all of the **same
# character.** Then for each group, say the number of characters, then say the
# character. To convert the saying into a digit string, replace the counts with
# a number and concatenate every saying.
# 
# For example, the saying and conversion for digit string `"3322251"`:
# 
# ![](https://assets.leetcode.com/uploads/2020/10/23/countandsay.jpg)
# 
# Given a positive integer `n`, return _the_`nth` _term of the **count-and-say**
# sequence_.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: n = 1
#     Output: "1"
#     Explanation: This is the base case.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: n = 4
#     Output: "1211"
#     Explanation:
#     countAndSay(1) = "1"
#     countAndSay(2) = say "1" = one 1 = "11"
#     countAndSay(3) = say "11" = two 1's = "21"
#     countAndSay(4) = say "21" = one 2 + one 1 = "12" + "11" = "1211"
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= n <= 30`
# 
# 
## @lc code=start
using LeetCode

function countandsay(n::Int)
    # Base case
    n == 1 && return "1"
    # Get the previous term
    previous_term = countandsay(n - 1)
    # Generate the current term by "saying" the previous term
    current_term = ""
    count = 0
    current_char = previous_term[1]
    
    for char in previous_term
        if char == current_char
            count += 1
        else
            current_term *= string(count) * current_char
            current_char = char
            count = 1
        end
    end
    # Append the last group
    current_term * string(count) * current_char
end
## @lc code=end
