# @lc code=start
using LeetCode

function num_triplets(nums1::Vector{Int}, nums2::Vector{Int})
    cnt1 = counter(nums1)
    cnt2 = counter(nums2)
    sqr_cnt1 = Dict(k ^ 2 => v for (k, v) in cnt1)
    sqr_cnt2 = Dict(k ^ 2 => v for (k, v) in cnt2)
    res = 0
    for (k1, v1) in cnt1
        for (k2, v2) in sqr_cnt2
            if k1 ^ 2 == k2
                res += (v1 - 1) * v1 * v2
            else
                res += cnt1[k2 ÷ k1] * v1 * v2
            end
        end
    end
    for (k1, v1) in cnt2
        for (k2, v2) in sqr_cnt1
            if k2 % k1 == 0
                if k1 ^ 2 == k2
                    res += (v1 - 1) * v1 * v2
                else
                    res += cnt2[k2 ÷ k1] * v1 * v2
                end
            end
        end
    end
    res ÷ 2
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

