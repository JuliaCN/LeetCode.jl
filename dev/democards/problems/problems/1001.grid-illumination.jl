# @lc code=start
using LeetCode

function grid_illumination(N, lamps::Vector{Tuple{Int,Int}}, query::Vector{Tuple{Int,Int}})
    function update!(lamp, q)
        col_illum[lamp[2]] += q
        row_illum[lamp[1]] += q
        main_diag_illum[lamp[2]-lamp[1]] += q
        d_diag_illum[lamp[2]+lamp[1]] += q
    end
    dirs = [
        -1 -1 -1 0 0 0 1 1 1
        1 0 -1 1 0 -1 1 0 -1
    ]
    col_illum = DefaultDict{Int,Int}(0)
    row_illum = DefaultDict{Int,Int}(0)
    main_diag_illum = DefaultDict{Int,Int}(0)
    d_diag_illum = DefaultDict{Int,Int}(0)
    illum_pos = Set(lamps)
    res = fill(0, length(query))
    for lamp in lamps
        update!(lamp, 1)
    end
    for (idx, q) in enumerate(query)
        if col_illum[q[2]] > 0 ||
           row_illum[q[1]] > 0 ||
           main_diag_illum[q[2]-q[1]] > 0 ||
           main_diag_illum[q[2]+q[1]] > 0
            res[idx] = 1
        end
        for dir in 1:9
            new_pos = (q[1] + dirs[1, dir], q[2] + dirs[2, dir])
            if new_pos in illum_pos
                pop!(illum_pos)
                update!(new_pos, -1)
            end
        end
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

