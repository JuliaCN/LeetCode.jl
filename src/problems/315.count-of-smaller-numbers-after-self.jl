# ---
# title: 315. Count of Smaller Numbers After Self
# id: problem315
# author: zhwang
# date: 2022-03-26
# difficulty: Hard
# categories: Binary Search, Divide and Conquer, Sort, Binary Indexed Tree, Segment Tree
# link: <https://leetcode.com/problems/count-of-smaller-numbers-after-self/description/>
# hidden: true
# ---
# 
# You are given an integer array _nums_ and you have to return a new _counts_
# array. The _counts_ array has the property where `counts[i]` is the number of
# smaller elements to the right of `nums[i]`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [5,2,6,1]
#     Output: [2,1,1,0]
#     Explanation:
#     To the right of 5 there are **2** smaller elements (2 and 1).
#     To the right of 2 there is only **1** smaller element (1).
#     To the right of 6 there is **1** smaller element (1).
#     To the right of 1 there is **0** smaller element.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= nums.length <= 10^5`
#   * `-10^4 <= nums[i] <= 10^4`
# 
# 
## @lc code=start
using LeetCode

## method 1: using merge sort
function count_smaller_method1(arr::Vector{Int})::Vector{Int}
    res = fill(0, length(arr))
    function merge_sort(arr::AbstractVector)::AbstractVector
        ## arr = [(idx1, num1), ...]
        (n = length(arr)) == 1 && return arr
        mid = n >> 1
        lpart = merge_sort(@view(arr[1:mid]))
        rpart = merge_sort(@view(arr[(mid + 1):end]))
        return merge_sorted(lpart, rpart)
    end
    function merge_sorted(
        lpart::AbstractVector, rpart::AbstractVector
    )::Vector{Tuple{Int,Int}}
        l1, l2 = length(lpart), length(rpart)
        combined = Vector{Tuple{Int,Int}}(undef, l1 + l2)
        p1 = p2 = 1
        for pos in eachindex(combined)
            if p2 > l2 || p1 <= l1 && lpart[p1][2] <= rpart[p2][2]
                combined[pos] = lpart[p1]
                res[lpart[p1][1]] += (p2 - 1)
                p1 += 1
            else
                combined[pos] = rpart[p2]
                p2 += 1
            end
        end
        return combined
    end

    merge_sort(collect(enumerate(arr)))
    return res
end

## method 2: using binary search
## require function "search_left_border" from solution 33
function count_smaller_method2(arr::Vector{Int})::Vector{Int}
    queue, res = Int[], Array{Int}(undef, length(reverse!(arr)))
    for (i, num) in enumerate(arr)
        loc = search_left_border(1, length(queue), x -> queue[x] >= num)
        res[i] = loc - 1
        insert!(queue, loc, num)
    end
    reverse!(arr)
    return reverse!(res)
end
## @lc code=end
