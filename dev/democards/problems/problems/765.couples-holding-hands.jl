# @lc code=start
using LeetCode

function min_swaps_couples(row::Vector{Int})
    len, ps, res = length(row), length(row) ÷ 2, 0
    grp = [Set{Int}() for i in 1:ps]
    for i in 1:2:len
        l, r = row[i] ÷ 2 + 1, row[i + 1] ÷ 2 + 1
        (l != r) && (push!(grp[l], r); push!(grp[r], l))
    end
    visited = fill(false, ps)
    q = Queue{Int}()
    for i in 1:ps
        visited[i] && continue
        enqueue!(q, i)
        visited[i] = true
        cnt = 0
        while !isempty(q)
            frt = dequeue!(q)
            cnt += 1
            for neighbor in grp[frt]
                visited[neighbor] && continue
                enqueue!(q, neighbor)
                visited[neighbor] = true
            end
        end
        res += cnt - 1
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

