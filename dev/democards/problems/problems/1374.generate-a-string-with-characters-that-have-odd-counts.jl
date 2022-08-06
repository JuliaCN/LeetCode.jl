# @lc code=start
using LeetCode
generate_the_string(n::Int) = isodd(n) ? 'a'^n : 'a' * 'b'^(n - 1)

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

