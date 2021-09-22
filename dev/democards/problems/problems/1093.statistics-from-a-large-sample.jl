# @lc code=start
using LeetCode

function sample_stats(count::Vector{Int})
    res = fill(0.0, 5)
    total = sum(count)
    half = total >> 1
    res[1] = findfirst(!=(0), count) - 1
    res[2] = findlast(!=(0), count) - 1
    res[3] = sum(x * y for (x, y) in zip(count, 0:255)) / total
    res[5] = argmax(count) - 1
    s = 0
    for i in eachindex(count)
        s += count[i]
        s < half && continue

        res[4] = i - 1
        s > half && break

        nnz = findnext(!=(0), count, i + 1)
        res[4] = iseven(total) ? (i + nnz) / 2 - 1 : nnz
        break
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

