#
# @lc app=leetcode id=120 lang=julia
#
# [120] Triangle
#

# @lc code=start
function minimumTotal(triangle::Vector{Vector{Int}}) 
    length(triangle) == 1 && return triangle[1][1];
    dp = fill(0, length(triangle))
    tmp = dp[:]
    dp[1:2] = triangle[2] .+ triangle[1][1]
    for i in 3:length(triangle)
        tmp[1] = dp[1] + triangle[i][1]
        for j in 2:i - 1  
            tmp[j] = min(dp[j], dp[j-1]) + triangle[i][j]
        end        
        tmp[i] = dp[i-1]+triangle[i][i]
        tmp, dp = dp, tmp
    end
    return minimum(dp)
end

# @lc code=end

