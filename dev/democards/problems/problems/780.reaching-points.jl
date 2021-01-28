# @lc code=start
using LeetCode

function reaching_points(sx, sy, tx, ty)
    while tx >= sx && ty >= sy
        if tx == ty
            break
        end
        if tx > ty
            if ty > sy
                tx %= ty;
            else
                return (tx - sx) % ty == 0;
            end
        else
            if tx > sx
                ty %= tx;
            else
                return (ty - sy) % tx == 0;
            end
        end
    end
    tx == sx && ty == sy
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

