# @lc code=start
using LeetCode

function find_circle_num(is_connected::Vector{Vector{Int}})
    len = length(is_connected)
    visited = fill(false, len)
    q = Queue{Int}()
    res = 0
    for i in 1:len
        if !visited[i]
            visited[i] = true
            enqueue!(q, i)
            while !isempty(q)
                frt = dequeue!(q)
                for j in 1:len
                    if !visited[j] && is_connected[frt][j] == 1
                        visited[j] = true
                        enqueue!(q, j)
                    end
                end
            end
            res += 1
        end
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

