# @lc code=start
using LeetCode

function smallest_subsequence(s::String)
    sascii = codeunits(s)[:] .- Int8('a' - 1)
    scnt = fill(0, 26)
    cur_cnt = fill(false, 26)
    cur = UInt8[]
    for c in sascii
        scnt[c] += 1
    end
    for c in sascii
        scnt[c] -= 1
        cur_cnt[c] && continue
        while !isempty(cur) && cur[end] > c && scnt[cur[end]] > 0
            cur_cnt[pop!(cur)] = false
        end
        push!(cur, c)
        cur_cnt[c] = true
    end
    return join(cur .+ ('a' - 1))
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

