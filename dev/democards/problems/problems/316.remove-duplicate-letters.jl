# @lc code=start
using LeetCode

function remove_duplicate_letters(s::String)::String
    stk = Char[]
    added = Set{Char}()
    remain = fill(0, 26)
    for ch in s
        remain[ch - 'a' + 1] += 1
    end
    for ch in s
        if !(ch in added)
            while !isempty(stk) && stk[end] > ch && remain[stk[end] - 'a' + 1] > 0
                pop!(added, pop!(stk))
            end
            push!(added, ch)
            push!(stk, ch)
        end
        remain[ch - 'a' + 1] -= 1
    end
    return join(stk)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

