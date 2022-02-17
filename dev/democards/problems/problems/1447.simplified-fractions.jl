# @lc code=start
using LeetCode

simplified_fractions(n::Int) = ["$p/$q" for q in 2:n for p in 1:(q - 1) if gcd(p, q) == 1]
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

