# ---
# title: 22. Generate Parentheses
# id: problem22
# author: Qling
# date: 2021-03-08
# difficulty: Medium
# categories: String, Backtracking
# link: <https://leetcode.com/problems/generate-parentheses/description/>
# hidden: true
# ---
# 
# Given `n` pairs of parentheses, write a function to _generate all combinations
# of well-formed parentheses_.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: n = 3
#     Output: ["((()))","(()())","(())()","()(())","()()()"]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: n = 1
#     Output: ["()"]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= n <= 8`
# 
# 
## @lc code=start
using LeetCode

function _generate!(p::String, left::Int, right::Int, res::Vector{String})
    if right == 0
        push!(res, p)
    else
        if left > 0
            _generate!(string(p, "("), left - 1, right, res)
        end

        if right > left
            _generate!(string(p, ")"), left, right - 1, res)
        end
    end
end

function generate_parenthesis(n::Int)::Vector{String}
    res = String[]
    _generate!("", n, n, res)
    return res
end


## @lc code=end
