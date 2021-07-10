# @lc code=start
using LeetCode

function longest_common_substring(itr1, itr2)
    m, n = length(itr1) + 1, length(itr2) + 1
    dp = fill(0, m, n)
    for i in 2: m, j in 2: n
        (itr1[i - 1] == itr2[j - 1]) && (dp[i, j] = dp[i - 1, j - 1] + 1)
    end
    return maximum(dp)
end

find_length718(nums1::Vector{Int}, nums2::Vector{Int}) = longest_common_substring(nums1, nums2)
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

