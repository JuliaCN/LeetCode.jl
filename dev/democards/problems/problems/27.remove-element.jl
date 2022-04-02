# @lc code=start
using LeetCode

remove_element!(nums::Vector{Int}, val::Int) = length(filter!(!=(val), nums))
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

