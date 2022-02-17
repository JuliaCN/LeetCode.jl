# @lc code=start
using LeetCode

function get_max_len(nums::Vector{Int})::Int
    pos_pre = neg_pre = max_ans = 0
    for num in nums
        if num == 0
            pos_pre = neg_pre = 0
        elseif num > 0
            pos_pre = pos_pre + 1
            neg_pre = neg_pre != 0 ? neg_pre + 1 : 0
        else
            neg_tmp = neg_pre
            neg_pre = pos_pre != 0 ? pos_pre + 1 : 1
            pos_pre = neg_tmp != 0 ? neg_tmp + 1 : 0
        end
        max_ans = max(max_ans, pos_pre)
    end
    return max_ans
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

