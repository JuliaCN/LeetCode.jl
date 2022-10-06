# @lc code=start
using LeetCode

function gcd_of_strings(str1::String, str2::String)
    return str1 * str2 == str2 * str1 ? str1[1:gcd(length(str1), length(str2))] : ""
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

