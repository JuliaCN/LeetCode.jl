# @lc code=start
using LeetCode

struct ParkingSystem
    A::Vector{Int}
    ParkingSystem(big, median, small) = new([big, median, small])
end

function add_car(parking::ParkingSystem, car_type::Int)::Bool
    parking.A[car_type] -= 1
    return parking.A[car_type] >= 0
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

