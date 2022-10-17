# ---
# title: 904. Fruit Into Baskets
# id: problem904
# author: Indigo
# date: 2022-10-17
# difficulty: Medium
# categories: Two Pointers
# link: <https://leetcode.com/problems/fruit-into-baskets/description/>
# hidden: true
# ---
# 
# In a row of trees, the `i`-th tree produces fruit with type `tree[i]`.
# 
# You **start at any tree  of your choice**, then repeatedly perform the
# following steps:
# 
#   1. Add one piece of fruit from this tree to your baskets.  If you cannot, stop.
#   2. Move to the next tree to the right of the current tree.  If there is no tree to the right, stop.
# 
# Note that you do not have any choice after the initial choice of starting
# tree: you must perform step 1, then step 2, then back to step 1, then step 2,
# and so on until you stop.
# 
# You have two baskets, and each basket can carry any quantity of fruit, but you
# want each basket to only carry one type of fruit each.
# 
# What is the total amount of fruit you can collect with this procedure?
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: [1,2,1]
#     Output: 3
#     Explanation: We can collect [1,2,1].
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [0,1,2,2]
#     Output: 3
#     Explanation: We can collect [1,2,2].
#     If we started at the first tree, we would only collect [0, 1].
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: [1,2,3,2,2]
#     Output: 4
#     Explanation: We can collect [2,3,2,2].
#     If we started at the first tree, we would only collect [1, 2].
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: [3,3,3,1,2,1,1,2,3,3,4]
#     Output: 5
#     Explanation: We can collect [1,2,1,1,2].
#     If we started at the first tree or the eighth tree, we would only collect 4 fruits.
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= tree.length <= 40000`
#   2. `0 <= tree[i] < tree.length`
# 
# 
## @lc code=start
using LeetCode

function total_fruit(fruits::Vector{Int})
    fruits .+= 1
    n = length(fruits)
    cnt = fill(0, n)
    type_cnt = 0
    res = 0
    j = 1
    for i in 1:n
        if (cnt[fruits[i]] += 1) == 1
            type_cnt += 1
        end
        while type_cnt > 2
            if (cnt[fruits[j]] -= 1) == 0
                type_cnt -= 1
            end
            j += 1
        end
        res = max(res, i - j + 1)
    end
    res
end
## @lc code=end
