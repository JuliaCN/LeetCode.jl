# ---
# title: 779. K-th Symbol in Grammar
# id: problem779
# author: Indigo
# date: 2021-01-28
# difficulty: Medium
# categories: Recursion
# link: <https://leetcode.com/problems/k-th-symbol-in-grammar/description/>
# hidden: true
# ---
# 
# On the first row, we write a `0`. Now in every subsequent row, we look at the
# previous row and replace each occurrence of `0` with `01`, and each occurrence
# of `1` with `10`.
# 
# Given row `N` and index `K`, return the `K`-th indexed symbol in row `N`. (The
# values of `K` are 1-indexed.) (1 indexed).
# 
#     
#     
#     **Examples:**
#     Input: N = 1, K = 1
#     Output: 0
#     
#     Input: N = 2, K = 1
#     Output: 0
#     
#     Input: N = 2, K = 2
#     Output: 1
#     
#     Input: N = 4, K = 5
#     Output: 1
#     
#     Explanation:
#     row 1: 0
#     row 2: 01
#     row 3: 0110
#     row 4: 01101001
#     
# 
# **Note:**
# 
#   1. `N` will be an integer in the range `[1, 30]`.
#   2. `K` will be an integer in the range `[1, 2^(N-1)]`.
# 
# 
## @lc code=start
using LeetCode

function kth_grammar(N::Int, K::Int)
    res = false
    for i in 1:N 
        iseven(K) && (res = !res)
        K = (K + 1) >> 1
    end
    res
end
## @lc code=end
