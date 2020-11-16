#
# @lc app=leetcode id=402 lang=julia
#
# [402] Remove K Digits
#
"""
Given a non-negative integer num represented as a string, remove k digits from the number so that the new number is the smallest possible.

Note:
The length of num is less than 10002 and will be ≥ k.
The given num does not contain any leading zero.
Example 1:

Input: num = "1432219", k = 3
Output: "1219"
Explanation: Remove the three digits 4, 3, and 2 to form the new number 1219 which is the smallest.
Example 2:

Input: num = "10200", k = 1
Output: "200"
Explanation: Remove the leading 1 and the number is 200. Note that the output must not contain leading zeroes.
Example 3:

Input: num = "10", k = 2
Output: "0"
Explanation: Remove all the digits from the number and it is left with nothing which is 0.
"""
# @lc code=start
function remove_kdigits(num::String, k::Int)::String
    num_code = codeunits(num)
    stk = UInt8[]
    for ch in num_code
        if k == 0 || isempty(stk)
            push!(stk, ch)
        else
            while !isempty(stk) && stk[end] > ch && k > 0
                pop!(stk)
                k -= 1
            end
            push!(stk, ch)
        end
    end
    idx = findfirst(x -> x != UInt8('0'), stk)
    if idx === nothing
        return "0"
    end
    return String(@view stk[idx:(end - k)])
end

# @lc code=end
