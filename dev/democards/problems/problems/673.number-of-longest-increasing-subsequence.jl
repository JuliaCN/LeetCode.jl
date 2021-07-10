# @lc code=start
using LeetCode

function find_number_of_LIS(nums::Vector{Int})
    len = length(nums)
    len <= 1 && return len
    dp = fill(1, len)
    cnt = copy(dp)
    for i in 2:len, j in 1:(i - 1)
        nums[i] <= nums[j] && continue
        if dp[i] <= dp[j]
            dp[i] = dp[j] + 1
            cnt[i] = cnt[j]
        elseif dp[i] == dp[j] + 1
            cnt[i] += cnt[j]
        end
    end
    max_len = maximum(dp)
    return sum(c for (idx, c) in enumerate(cnt) if dp[idx] == max_len)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

