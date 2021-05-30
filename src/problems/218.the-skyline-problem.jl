# ---
# title: 218. The Skyline Problem
# id: problem218
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Divide and Conquer, Heap, Binary Indexed Tree, Segment Tree, Line Sweep
# link: <https://leetcode.com/problems/the-skyline-problem/description/>
# hidden: true
# ---
# 
# A city's **skyline** is the outer contour of the silhouette formed by all the
# buildings in that city when viewed from a distance. Given the locations and
# heights of all the buildings, return _the **skyline** formed by these
# buildings collectively_.
# 
# The geometric information of each building is given in the array `buildings`
# where `buildings[i] = [lefti, righti, heighti]`:
# 
#   * `lefti` is the x coordinate of the left edge of the `ith` building.
#   * `righti` is the x coordinate of the right edge of the `ith` building.
#   * `heighti` is the height of the `ith` building.
# 
# You may assume all buildings are perfect rectangles grounded on an absolutely
# flat surface at height `0`.
# 
# The **skyline** should be represented as a list of "key points" **sorted by
# their x-coordinate** in the form `[[x1,y1],[x2,y2],...]`. Each key point is
# the left endpoint of some horizontal segment in the skyline except the last
# point in the list, which always has a y-coordinate  `0` and is used to mark
# the skyline's termination where the rightmost building ends. Any ground
# between the leftmost and rightmost buildings should be part of the skyline's
# contour.
# 
# **Note:** There must be no consecutive horizontal lines of equal height in the
# output skyline. For instance, `[...,[2 3],[4 5],[7 5],[11 5],[12 7],...]` is
# not acceptable; the three lines of height 5 should be merged into one in the
# final output as such: `[...,[2 3],[4 5],[12 7],...]`
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/12/01/merged.jpg)
# 
#     
#     
#     Input: buildings = [[2,9,10],[3,7,15],[5,12,12],[15,20,10],[19,24,8]]
#     Output: [[2,10],[3,15],[7,12],[12,0],[15,10],[20,8],[24,0]]
#     Explanation:
#     Figure A shows the buildings of the input.
#     Figure B shows the skyline formed by those buildings. The red points in figure B represent the key points in the output list.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: buildings = [[0,2,3],[2,5,3]]
#     Output: [[0,3],[5,0]]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= buildings.length <= 104`
#   * `0 <= lefti < righti <= 231 - 1`
#   * `1 <= heighti <= 231 - 1`
#   * `buildings` is sorted by `lefti` in non-decreasing order.
# 
# 
## @lc code=start
using LeetCode

function get_skyline(buildings::Vector{Vector{Int}})
    all = Tuple{Int, Int}[]
    res = Tuple{Int, Int}[]
    @inbounds for b in buildings
        push!(all, (b[1], -b[3]))
        push!(all, (b[2], b[3]))
    end
    sort!(all)

    heights = SortedMultiDict{Int, Nothing}()
    push!(heights, 0 => nothing)
    lst = (0, 0)
    for p in all
        p[2] < 0 ? push!(heights, -p[2] => nothing) : delete!((heights, searchsortedfirst(heights, p[2])))
        mh = last(heights).first
        if lst[2] != mh
            lst = (p[1], mh)
            push!(res, lst)
        end
    end
    return res
end
## @lc code=end
