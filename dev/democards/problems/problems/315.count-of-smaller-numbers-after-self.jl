# @lc code=start
using LeetCode

# method 1: using merge sort
function count_smaller_method1(arr::Vector{Int})::Vector{Int}
    res = fill(0, length(arr))
    function merge_sort(arr::AbstractVector)::AbstractVector
        # arr = [(idx1, num1), ...]
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

# method 2: using binary search
# require function "search_left_border" from solution 33
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
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

