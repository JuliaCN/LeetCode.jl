# @lc code=start
using LeetCode

function image_smoother(img::Matrix{Int})::Matrix{Int}
    presum, (m, n) = similar(img), size(img)
    presum[1, 1] = img[1, 1]
    for i in 2:m
        presum[i, 1] = presum[i - 1, 1] + img[i, 1]
    end
    for j in 2:n
        presum[1, j] = presum[1, j - 1] + img[1, j]
    end
    for i in 2:m, j in 2:n
        presum[i, j] =
            img[i, j] + presum[i - 1, j] + presum[i, j - 1] - presum[i - 1, j - 1]
    end
    # obtain results from 2-dim presum
    res, indices = similar(img), CartesianIndices(img)
    for i in 1:m, j in 1:n
        x1 = i > 1 ? i - 2 : i - 1
        y1 = j > 1 ? j - 2 : j - 1
        x2 = i < m ? i + 1 : i
        y2 = j < n ? j + 1 : j
        idx1, idx2, idx3, idx4 = CartesianIndex.([(x1, y1), (x1, y2), (x2, y1), (x2, y2)])
        area =
            presum[idx4] - (idx2 ∈ indices && presum[idx2]) -
            (idx3 ∈ indices && presum[idx3]) + (idx1 ∈ indices && presum[idx1])
        res[i, j] = area ÷ prod((idx4 - idx1).I)
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

