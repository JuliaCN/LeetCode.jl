#
# @lc app=leetcode id=767 lang=python3
#
# [767] Reorganize String
#
"""
Given a string S, check if the letters can be rearranged so that two characters that are adjacent to each other are not the same.

If possible, output any possible result.  If not possible, return the empty string.

Example 1:

Input: S = "aab"
Output: "aba"
Example 2:

Input: S = "aaab"
Output: ""
Note:

S will consist of lowercase letters and have length in range [1, 500].
"""
# @lc code=start
function reorganize_string(S::String)
    char_arr = codeunits(S)
    ascii_a, len = Int('a'), length(S)
    mp = fill(0, 26)
    for ch in char_arr
        mp[ch - ascii_a + 1] += 1
    end
    max_freq = argmax(mp)
    if mp[max_freq] > (len + 1) ÷ 2
        return ""
    end
    res = fill('a', len)
    idx = 1
    for i in 1:mp[max_freq]
        res[idx] = Char(max_freq + ascii_a - 1)
        idx += 2
    end
    mp[max_freq] = 0
    for i in 1:26
        for j in 1:mp[i]
            (idx > len) && (idx = 2)
            res[idx] = Char(i + ascii_a - 1)
            idx += 2
        end
    end
    # println(res)
    return String(res)
end
# @lc code=end
