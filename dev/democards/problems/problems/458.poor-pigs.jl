# @lc code=start
using LeetCode

function poor_pigs(buckets::Int, minutesToDie::Int, minutesToTest::Int)
    state = minutesToTest ÷ minutesToDie + 1
    return ceil(Int, log(buckets) / log(state))
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

