# @lc code=start
using LeetCode

function all_cells_dist_order(rows::Int, cols::Int, rcenter::Int, ccenter::Int)
    rs = max(rcenter - 1, rows - rcenter)
    cs = max(ccenter - 1, cols - ccenter)
    iters = rs + cs
    res = Vector{Tuple{Int,Int}}(undef, rows * cols)
    res[1] = (rcenter, ccenter)
    idx = 2
    cidx = CartesianIndex(1, 1):CartesianIndex(rows, cols)
    for i in 1:iters
        for j in (-i):i
            for k in (i - abs(j), abs(j) - i)
                cur_idx = CartesianIndex(rcenter + j, ccenter + k)
                if cur_idx in cidx
                    res[idx] = cur_idx.I
                    idx += 1
                end
                k == 0 && break
            end
        end
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

