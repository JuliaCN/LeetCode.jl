# @lc code=start
using LeetCode

function exclusive_time(n::Int, logs::Vector{T}) where {T<:AbstractString}
    logs = [
        (parse(Int, id) + 1, state, parse(Int, time)) for
        (id, state, time) in split.(logs, ':')
    ]
    task, _, pretime = first(logs)
    times, tasks = zeros(Int, n), [task]
    for (id, state, curtime) in @views(logs[2:end])
        interval, pretime = curtime - pretime, curtime
        isempty(tasks) || (times[last(tasks)] += interval)
        if state == "start" ## new task started
            push!(tasks, id)
        else ## task ended
            times[pop!(tasks)] += 1 ## add end time
            pretime += 1
        end
    end
    return times
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

