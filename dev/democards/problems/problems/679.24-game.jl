# @lc code=start
using LeetCode

function judgePoint24(nums::Vector)::Bool
    n = length(nums)
    if n == 1
        return nums[1] == 24
    else
        for i in 1:n
            for j in 1:n
                if j != i
                    rest = [nums[k] for k in 1:n if k != i && k != j]
                    if judgePoint24([rest..., nums[i] + nums[j]]) ||
                       judgePoint24([rest..., nums[i] - nums[j]]) ||
                       judgePoint24([rest..., nums[j] - nums[i]]) ||
                       judgePoint24([rest..., nums[i] * nums[j]]) ||
                       (!iszero(nums[j]) && judgePoint24([rest..., nums[i]//nums[j]])) ||
                       (!iszero(nums[i]) && judgePoint24([rest..., nums[j]//nums[i]]))
                        return true
                    end
                end
            end
        end
        false
    end
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

