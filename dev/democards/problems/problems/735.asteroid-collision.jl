# @lc code=start
using LeetCode

function asteroid_collision(asteroids::Vector{Int})
    res = Int[]
    for ast in asteroids
        ast > 0 && (push!(res, ast); continue)
        flg = true
        while !isempty(res) && res[end] > 0
            cmp = res[end] + ast
            if cmp < 0
                pop!(res)
            elseif cmp == 0
                pop!(res)
                flg = false
            else
                flg = false
                break
            end
        end
        flg && push!(res, ast)
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

