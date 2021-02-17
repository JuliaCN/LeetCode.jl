# @lc code=start
using LeetCode

function max_depth_559(tree::Vector{Vector{Int}})
    isempty(tree) && return 0
    q = Queue{Tuple{Int, Int}}()
    enqueue!(q, (1, 1))
    res = 1
    while !isempty(q)
        frt = dequeue!(q)
        res = frt[2]
        for son in tree[frt[1]]
            enqueue!(q, (son, res + 1))
        end
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

