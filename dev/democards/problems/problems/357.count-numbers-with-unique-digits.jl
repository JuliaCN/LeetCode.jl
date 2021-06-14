# @lc code=start
using LeetCode

function count_numbers_with_unique_digits(n::Int)
    n > 10 && return count_numbers_with_unique_digits(10)
    n == 0 && return 1
    return 9 * binomial(9, n - 1) * factorial(n - 1) +
           count_numbers_with_unique_digits(n - 1)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

