# ---
# title: 1093. Statistics from a Large Sample
# id: problem1093
# author: Indigo
# date: 2021-08-30
# difficulty: Medium
# categories: Math, Two Pointers
# link: <https://leetcode.com/problems/statistics-from-a-large-sample/description/>
# hidden: true
# ---
# 
# We sampled integers between `0` and `255`, and stored the results in an array
# `count`:  `count[k]` is the number of integers we sampled equal to `k`.
# 
# Return the minimum, maximum, mean, median, and mode of the sample
# respectively, as an array of **floating point numbers**.  The mode is
# guaranteed to be unique.
# 
# _(Recall that the median of a sample is:_
# 
#   * _The middle element, if the elements of the sample were sorted and the number of elements is odd;_
#   * _The average of the middle two elements, if the elements of the sample were sorted and the number of elements is even.)_
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: count = [0,1,3,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
#     Output: [1.00000,3.00000,2.37500,2.50000,3.00000]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: count = [0,4,3,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
#     Output: [1.00000,4.00000,2.18182,2.00000,1.00000]
#     
# 
# 
# 
# **Constraints:**
# 
#   1. `count.length == 256`
#   2. `1 <= sum(count) <= 10^9`
#   3. The mode of the sample that count represents is unique.
#   4. Answers within `10^-5` of the true value will be accepted as correct.
# 
# 
## @lc code=start
using LeetCode

function sample_stats(count::Vector{Int})    
    res = fill(0.0, 5)
    total = sum(count)
    half = total >> 1
    res[1] = findfirst(!=(0), count) - 1
    res[2] = findlast(!=(0), count) - 1
    res[3] = sum(x * y for (x, y) in zip(count, 0:255)) / total
    res[5] = argmax(count) - 1
    s = 0
    for i in eachindex(count)
        s += count[i]
        s < half && continue

        res[4] = i - 1
        s > half && break

        nnz = findnext(!=(0), count, i + 1)
        res[4] = iseven(total) ? (i + nnz) / 2 - 1 : nnz 
        break
    end
    res
end
## @lc code=end
