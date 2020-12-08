# @lc code=start
using LeetCode

function zig_zag_convert(s::String, num_rows::Int)::String
    if num_rows == 1 || num_rows >= length(s)
        s
    else
        table = [Char[] for _ in 1:num_rows]
        i, dir = 1, 1
        for x in s
            push!(table[i], x)
            if i == 1
                dir = 1
            elseif i == num_rows
                dir = -1
            end
            i += dir
        end
        join(Iterators.flatten(table))
    end
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

