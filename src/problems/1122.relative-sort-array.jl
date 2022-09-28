# ---
# title: 1122. Relative Sort Array
# id: problem1122
# author: Indigo
# date: 2022-09-28
# difficulty: Easy
# categories: Array, Sort
# link: <https://leetcode.com/problems/relative-sort-array/description/>
# hidden: true
# ---
# 
# Given two arrays `arr1` and `arr2`, the elements of `arr2` are distinct, and
# all elements in `arr2` are also in `arr1`.
# 
# Sort the elements of `arr1` such that the relative ordering of items in `arr1`
# are the same as in `arr2`.  Elements that don't appear in `arr2` should be
# placed at the end of `arr1` in **ascending** order.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: arr1 = [2,3,1,3,2,4,6,7,9,2,19], arr2 = [2,1,4,3,9,6]
#     Output: [2,2,2,1,4,3,3,9,6,7,19]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= arr1.length, arr2.length <= 1000`
#   * `0 <= arr1[i], arr2[i] <= 1000`
#   * All the elements of `arr2` are **distinct**.
#   * Each `arr2[i]` is in `arr1`.
# 
# 
## @lc code=start
using LeetCode

function relative_sort_array(arr1::Vector{Int}, arr2::Vector{Int})
    res = Vector{Int}(undef, length(arr1))
    idx = length(res)
    dc = Dict{Int,Int}((k => 0) for k in arr2)
    for i in arr1
        if haskey(dc, i)
            dc[i] += 1
        else
            res[idx] = i
            idx -= 1
        end
    end
    sort!(@view(res[(idx + 1):end]))
    idx = 1
    for item in arr2
        res[idx:(idx + dc[item] - 1)] .= item
        idx += dc[item]
    end
    return res
end
## @lc code=end
