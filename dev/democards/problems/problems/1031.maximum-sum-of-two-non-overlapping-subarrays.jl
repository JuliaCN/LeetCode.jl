# @lc code=start
using LeetCode

function window_sum(nums::Vector{Int}, l::Int)
    res = fill(0, length(nums))
    return window_sum!(res, nums, l)
end

function window_sum!(res::Vector{Int}, nums::Vector{Int}, l::Int)
    res[1] = sum(@view(nums[1:l]))
    cur_sum = res[1]
    for i in 2:(length(nums) - l + 1)
        cur_sum += nums[i + l - 1] - nums[i - 1]
        res[i] = cur_sum
    end
    return res
end

function max_win_sum(nums::Vector{Int}, l::Int)
    res = fill(0, length(nums))
    return max_win_sum!(res, nums, l)
end

function max_win_sum!(res::Vector{Int}, nums::Vector{Int}, l::Int)
    window_sum!(res, nums, l)
    for i in (length(nums) - l):-1:1
        res[i] = max(res[i], res[i + 1])
    end
    return res
end

function max_sum_two_no_overlap(nums::Vector{Int}, first_len::Int, second_len::Int)
    n = length(nums)
    tlen = first_len + second_len
    flen_sums = window_sum(nums, first_len)
    slen_sums = window_sum(nums, second_len)

    fmax_win = max_win_sum(nums, first_len)
    smax_win = max_win_sum(nums, second_len)
    return max(
        maximum(flen_sums[i] + smax_win[i + first_len] for i in 1:(n - tlen + 1)),
        maximum(slen_sums[i] + fmax_win[i + second_len] for i in 1:(n - tlen + 1)),
    )
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

