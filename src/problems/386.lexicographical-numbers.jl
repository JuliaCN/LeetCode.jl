# ---
# title: 386. Lexicographical Numbers
# id: problem386
# author: Indigo
# date: 2021-06-15
# difficulty: Medium
# categories: 
# link: <https://leetcode.com/problems/lexicographical-numbers/description/>
# hidden: true
# ---
# 
# Given an integer _n_ , return 1 - _n_ in lexicographical order.
# 
# For example, given 13, return: [1,10,11,12,13,2,3,4,5,6,7,8,9].
# 
# Please optimize your algorithm to use less time and space. The input size may
# be as large as 5,000,000.
# 
# 
## @lc code=start
using LeetCode

function lexical_order(n)
    res = Vector{Int}(undef, n)
    cur = 1
    for i in 1:n
        res[i] = cur
        if 10cur <= n
            cur *= 10
        else
            (cur >= n) && (cur ÷= 10)
            cur += 1
            while cur % 10 == 0
                cur ÷= 10
            end
        end
    end
    return res
end
## @lc code=end
