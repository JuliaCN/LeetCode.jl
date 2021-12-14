# @lc code=start
using LeetCode

function roman_to_integer(s::AbstractString)
    table = Dict(
        'I'      =>       1,
        'V'      =>       5,
        'X'      =>       10,
        'L'      =>       50,
        'C'      =>       100,
        'D'      =>       500,
        'M'      =>       1000,
    )

    nums = [table[c] for c in s]

    for idx = 1:lastindex(nums)-1
        nums[idx] *= nums[idx] >= nums[idx+1] ? 1 : -1
    end

    return sum(nums)
end

# add your code here:
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

