# @lc code=start
using LeetCode

function find_error_nums(nums::Vector{Int})
    cnt = fill(0x0, length(nums))
    for num in nums
        cnt[num] += 1
    end
    return findfirst(==(0x2), cnt), findfirst(==(0x0), cnt)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

