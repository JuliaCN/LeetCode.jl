# @lc code=start
using LeetCode
using Dates

function alert_names(key_name::Vector{String}, key_time::Vector{String})
    res = Vector{String}()
    mp = Dict{String,Vector{Time}}()
    for (idx, name) in enumerate(key_name)
        if !haskey(mp, name)
            mp[name] = String[]
        end
        push!(mp[name], Time(key_time[idx]))
    end
    for (name, time) in mp
        sort!(time)
        for idx in 1:(length(time) - 2)
            time1h = time[idx] + Hour(1)
            if time[idx + 1] <= time1h && time[idx + 2] <= time1h
                push!(res, name)
                break
            end
        end
    end
    return sort!(res)
end

# add your code here:
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

