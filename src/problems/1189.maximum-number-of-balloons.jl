# ---
# title: 1189. Maximum Number of Balloons
# id: problem1189
# author: zhwang
# date: 2022-02-13
# difficulty: Easy
# categories: Hash Table, String
# link: <https://leetcode.com/problems/maximum-number-of-balloons/description/>
# hidden: true
# ---
# 
# Given a string `text`, you want to use the characters of `text` to form as
# many instances of the word **" balloon"** as possible.
# 
# You can use each character in `text` **at most once**. Return the maximum
# number of instances that can be formed.
# 
# 
# 
# **Example 1:**
# 
# **![](https://assets.leetcode.com/uploads/2019/09/05/1536_ex1_upd.JPG)**
# 
#     
#     
#     Input: text = "nlaebolko"
#     Output: 1
#     
# 
# **Example 2:**
# 
# **![](https://assets.leetcode.com/uploads/2019/09/05/1536_ex2_upd.JPG)**
# 
#     
#     
#     Input: text = "loonbalxballpoon"
#     Output: 2
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: text = "leetcode"
#     Output: 0
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= text.length <= 10^4`
#   * `text` consists of lower case English letters only.
# 
# 
## @lc code=start
using LeetCode

function max_num_of_ballons(text::String)::Int
    words = Dict{Char,Int}(s => 0 for s in "balon")
    for s in text
        if haskey(words, s)
            words[s] += 1
        end
    end
    return min(words['b'], words['a'], words['l'] ÷ 2, words['o'] ÷ 2, words['n'])
end
## @lc code=end
