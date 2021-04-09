# @lc code=start
using LeetCode

function smallest_distance_pair(nums::Vector{Int}, k::Int)::Int
    sort!(nums)
    n = length(nums)
    function count_not_greater(diff)
        i, ans = 1, 0
        for j in 2: n
            while nums[j] - nums[i] > diff
                i += 1
            ans += j - i
            end
        end

        return ans
    end

    left, right = 0, nums[end] - nums[1]
    while left <= right
        mid = (left + right) >> 1
        if count_not_greater(mid) >= k
            right = mid - 1
        else
            left = mid + 1
        end
    end

    return left
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

