# @lc code=start
using LeetCode

function product_except_self(nums::Vector{Int})
    cnt_zeros = count(==(0), nums)
    cnt_zeros > 1 && return fill(0, size(nums))
    mult = 1
    for num in nums
        num != 0 && (mult *= num)
    end
    res = fill(0, length(nums))
    (cnt_zeros == 1) ? (res[findfirst(==(0), nums)] = mult) : (res .= mult .÷ nums)
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

