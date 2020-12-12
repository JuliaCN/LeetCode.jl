# @lc code=start
using LeetCode
function predict_party_victory(senate::String)
    len = length(senate)
    radiant, dire = Queue{Int}(), Queue{Int}()
    for (idx, ch) in enumerate(senate)
        (ch == 'R') ? enqueue!(radiant, idx) : enqueue!(dire, idx)
    end
    while !isempty(radiant) && !isempty(dire)
        r_front, d_fromt = dequeue!(radiant), dequeue!(dire)
        (r_front < d_fromt) ? enqueue!(radiant, r_front + len) : enqueue!(dire, d_fromt + len)

    end
    return isempty(dire) ? "Radiant" : "Dire"
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

