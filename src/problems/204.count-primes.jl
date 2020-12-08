# ---
# title: 204. Count Primes
# id: problem204
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: Hash Table, Math
# link: <https://leetcode.com/problems/count-primes/description/>
# hidden: true
# ---
# 
# Count the number of prime numbers less than a non-negative number, `n`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: n = 10
#     Output: 4
#     Explanation: There are 4 prime numbers less than 10, they are 2, 3, 5, 7.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: n = 0
#     Output: 0
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: n = 1
#     Output: 0
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= n <= 5 * 106`
# 
# 
## @lc code=start
using LeetCode

function count_primes(n::Int)
    if n <= 1
        return 0   
    end
    arr = fill(true, n - 1)
    for i in 2 : n - 1
        for j in i ^ 2 : i : (n - 1) 
            arr[j] = false
        end
    end
    return sum(arr) - 1
end
## @lc code=end
