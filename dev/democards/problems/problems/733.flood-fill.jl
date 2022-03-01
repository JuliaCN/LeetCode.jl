# @lc code=start
using LeetCode

function flood_fill!(image::Matrix{Int}, sr::Int, sc::Int, new_color::Int)::Matrix{Int}
    ind = CartesianIndex((sr + 1, sc + 1)) ## index correction
    old_color, image[ind] = image[ind], new_color
    old_color == new_color && return image
    inds, queue = CartesianIndices(image), [ind]
    while !isempty(queue)
        ind = popfirst!(queue)
        for I in [(-1, 0), (1, 0), (0, -1), (0, 1)]
            new_I = ind + CartesianIndex(I)
            if new_I ∈ inds && image[new_I] == old_color
                image[new_I] = new_color
                push!(queue, new_I)
            end
        end
    end
    return image
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

