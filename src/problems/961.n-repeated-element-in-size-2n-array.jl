# ---
# title: 961. N-Repeated Element in Size 2N Array
# id: problem961
# author: Indigo
# date: 2021-01-25
# difficulty: Easy
# categories: Hash Table
# link: <https://leetcode.com/problems/n-repeated-element-in-size-2n-array/description/>
# hidden: true
# ---
# 
# In a array `A` of size `2N`, there are `N+1` unique elements, and exactly one
# of these elements is repeated `N` times.
# 
# Return the element repeated `N` times.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: [1,2,3,3]
#     Output: 3
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [2,1,2,5,3,2]
#     Output: 2
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: [5,1,5,2,5,3,5,4]
#     Output: 5
#     
# 
# 
# 
# **Note:**
# 
#   * `4 <= A.length <= 10000`
#   * `0 <= A[i] < 10000`
#   * `A.length` is even
# 
# 
## @lc code=start
using LeetCode

function repeated_n_times(A::Vector{Int})
    for i in 2:length(A) 
        if A[i] == A[i - 1]
            return A[i]
        end
    end
    
    ## 3X3X OR 3XX3 OR X3X3
    return (A[1] == A[3] || A[1] == A[4]) ? A[1] : A[2]
end
## @lc code=end
