# @lc code=start
using LeetCode

function average_salary_excluding_mami(salary::Vector{Int})
    return (sum(salary) - minimum(salary) - maximum(salary)) / (length(salary) - 2)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

