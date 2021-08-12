# ---
# title: 1041. Robot Bounded In Circle
# id: problem1041
# author: Indigo
# date: 2021-07-31
# difficulty: Medium
# categories: Math
# link: <https://leetcode.com/problems/robot-bounded-in-circle/description/>
# hidden: true
# ---
# 
# On an infinite plane, a robot initially stands at `(0, 0)` and faces north.
# The robot can receive one of three instructions:
# 
#   * `"G"`: go straight 1 unit;
#   * `"L"`: turn 90 degrees to the left;
#   * `"R"`: turn 90 degress to the right.
# 
# The robot performs the `instructions` given in order, and repeats them
# forever.
# 
# Return `true` if and only if there exists a circle in the plane such that the
# robot never leaves the circle.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: "GGLLGG"
#     Output: true
#     Explanation:
#     The robot moves from (0,0) to (0,2), turns 180 degrees, and then returns to (0,0).
#     When repeating these instructions, the robot remains in the circle of radius 2 centered at the origin.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: "GG"
#     Output: false
#     Explanation:
#     The robot moves north indefinitely.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: "GL"
#     Output: true
#     Explanation:
#     The robot moves from (0, 0) -> (0, 1) -> (-1, 1) -> (-1, 0) -> (0, 0) -> ...
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= instructions.length <= 100`
#   2. `instructions[i]` is in `{'G', 'L', 'R'}`
# 
# 
## @lc code=start
using LeetCode

function is_robot_bounded(instructions::String)::Bool
    x, y = 0, 0
    dirs = ((0, 1), (1, 0), (0, -1), (-1, 0))
    st = 1
    for ch in instructions
        if ch == 'G'
            x += dirs[st][1]
            y += dirs[st][2]
        elseif ch == 'L'
            st = mod1(st + 1, 4)
        else
            st = mod1(st - 1, 4)
        end
    end
    return (x, y) == (0, 0) || st != 1
end
## @lc code=end
