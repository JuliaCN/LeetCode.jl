# @lc code=start
using LeetCode

function last_substring(s::String)
    m_ch = maximum(s)
    mc_pos = findall(==(m_ch), s)
    pos, window_len, new_window_len = first(mc_pos), 1, 1
    for idx in 2:length(mc_pos)
        if mc_pos[idx] == mc_pos[idx - 1] + 1
            new_window_len += 1
        else
            if new_window_len > window_len
                window_len = new_window_len
                pos = mc_pos[idx - 1] - new_window_len + 1
            end
            new_window_len = 1
        end
    end
    return s[pos:end]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

