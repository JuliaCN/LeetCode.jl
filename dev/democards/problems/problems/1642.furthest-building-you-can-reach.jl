# @lc code=start
using LeetCode

function furthest_building(heights::Vector{Int}, bricks::Int, ladders::Int)
    q = Int[]
    for i in 1:(length(heights) - 1)
        diff = heights[i + 1] - heights[i]
        if diff > 0
            if diff > bricks && ladders == 0
                return i - 1
            end
            if bricks >= diff
                heappush!(q, diff)
                bricks -= diff
            else
                if !isempty(q) && q[1] > diff
                    bricks += heappop!(q) - diff
                    heappush!(q, diff)
                end
                ladders -= 1
            end
        end
    end
    return length(heights) - 1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

