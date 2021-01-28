# ---
# title: 786. K-th Smallest Prime Fraction
# id: problem786
# author: Indigo
# date: 2021-01-28
# difficulty: Hard
# categories: Binary Search, Heap
# link: <https://leetcode.com/problems/k-th-smallest-prime-fraction/description/>
# hidden: true
# ---
# 
# A sorted list `A` contains 1, plus some number of primes.  Then, for every p <
# q in the list, we consider the fraction p/q.
# 
# What is the `K`-th smallest fraction considered?  Return your answer as an
# array of ints, where `answer[0] = p` and `answer[1] = q`.
# 
#     
#     
#     **Examples:**
#     Input: A = [1, 2, 3, 5], K = 3
#     Output: [2, 5]
#     Explanation:
#     The fractions to be considered in sorted order are:
#     1/5, 1/3, 2/5, 1/2, 3/5, 2/3.
#     The third fraction is 2/5.
#     
#     Input: A = [1, 7], K = 1
#     Output: [1, 7]
#     
# 
# **Note:**
# 
#   * `A` will have length between `2` and `2000`.
#   * Each `A[i]` will be between `1` and `30000`.
#   * `K` will be between `1` and `A.length * (A.length - 1) / 2`.
# 
# 
## @lc code=start
using LeetCode

using DataStructures
function kth_smallest_prime_fraction(arr::Vector{Int}, k::Int)
    hp = BinaryMinHeap(1 .// arr[2:end])
    next_prime = Dict((arr[i], arr[i+1]) for i in 1:length(arr)-1)
    while (k -= 1) > 0
        tp = pop!(hp)
        if next_prime[tp.num] < tp.den
            push!(hp, next_prime[tp.num] // tp.den)            
        end
    end
    return first(hp)
end
## @lc code=end
