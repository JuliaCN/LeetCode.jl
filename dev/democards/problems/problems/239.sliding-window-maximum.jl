# @lc code=start
using LeetCode
function max_sliding_window(nums::Vector{Int}, k::Int)::Vector{Int}
    q = Deque{Int}()
    len = length(nums)
    res = fill(0, len - k + 1)
    for i in 1:k-1
        num = nums[i]
        while !isempty(q) && nums[first(q)] < num
            popfirst!(q)
        end
        push!(q, i)
    end
    for i in k:len
        num = nums[i]
        while !isempty(q) && (nums[first(q)] < num || first(q) < i - k + 1)
            popfirst!(q)
        end
        while !isempty(q) && nums[last(q)] < num
            pop!(q)
        end
        push!(q, i)
        res[i - k + 1] = nums[first(q)]
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

