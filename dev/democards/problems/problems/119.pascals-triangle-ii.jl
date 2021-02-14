# @lc code=start
using LeetCode

function get_pascal_row(row_index::Int)
    res = fill(1, row_index + 1)
    for i in 2:row_index
        res[2:i] .= @view(res[1:(i - 1)]) + @view(res[2:i])
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

