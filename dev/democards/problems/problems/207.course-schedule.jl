# @lc code=start
using LeetCode
function can_finish_courses(num_courses, prerequisites::Vector{Vector{Int}})
    in_deg = fill(0, num_courses)
    point_to = [Int[] for _ in 1:num_courses] # fill(Int[], num_courses) is not proper!
    for edge in prerequisites
        in_deg[edge[1]] += 1
        push!(point_to[edge[2]], edge[1])
    end
    q = Queue{Int}()
    for idx in 1:length(in_deg)
        (in_deg[idx] == 0) && (enqueue!(q, idx))
    end
    while !isempty(q)
        frt = dequeue!(q)
        for pt in point_to[frt]
            (in_deg[pt] -= 1) == 0 && enqueue!(q, pt)
        end
    end
    return all(==(0), in_deg)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

