# @lc code=start
using LeetCode

function min_area_free_rect(points::Vector{Vector{Int}})
    function is_right_angle(p1, p2, p3)
        return (p1[1] - p2[1]) * (p1[1] - p3[1]) + (p1[2] - p2[2]) * (p1[2] - p3[2]) == 0
    end
    point_set = Set(points)
    res, len = Inf, length(points)
    for i in 1 : len
        for j in 1 + i : len
            for k in 1 + j : len
                flg = false
                if is_right_angle(points[i], points[j], points[k])
                    flg = true
                elseif is_right_angle(points[j], points[k], points[i])
                    flg = true
                    i, j = j, i
                elseif is_right_angle(points[k], points[i], points[j])
                    i, k = k, i
                    flg = true
                end
                if flg && (points[j] + points[k] - points[i]) in point_set
                    area = sqrt(sum((points[i] - points[j]) .^ 2) * sum((points[i] - points[k]) .^ 2))
                    (area > 0) && (res = min(res, area))
                end
            end
        end
    end
    (res == Inf) ? 0.0 : res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

