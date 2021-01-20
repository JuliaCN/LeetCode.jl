# ---
# title: 207. Course Schedule
# id: problem207
# author: Indigo
# date: 2021-01-20
# difficulty: Medium
# categories: Depth-first Search, Breadth-first Search, Graph, Topological Sort
# link: <https://leetcode.com/problems/course-schedule/description/>
# hidden: true
# ---
# 
# There are a total of `numCourses` courses you have to take, labeled from `0`
# to `numCourses-1`.
# 
# Some courses may have prerequisites, for example to take course 0 you have to
# first take course 1, which is expressed as a pair: `[0,1]`
# 
# Given the total number of courses and a list of prerequisite **pairs** , is it
# possible for you to finish all courses?
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: numCourses = 2, prerequisites = [[1,0]]
#     Output: true
#     Explanation:  There are a total of 2 courses to take. 
#                  To take course 1 you should have finished course 0. So it is possible.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: numCourses = 2, prerequisites = [[1,0],[0,1]]
#     Output: false
#     Explanation:  There are a total of 2 courses to take. 
#                  To take course 1 you should have finished course 0, and to take course 0 you should
#                  also have finished course 1. So it is impossible.
#     
# 
# 
# 
# **Constraints:**
# 
#   * The input prerequisites is a graph represented by **a list of edges** , not adjacency matrices. Read more about [how a graph is represented](https://www.khanacademy.org/computing/computer-science/algorithms/graph-representation/a/representing-graphs).
#   * You may assume that there are no duplicate edges in the input prerequisites.
#   * `1 <= numCourses <= 10^5`
# 
# 
## @lc code=start
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
## @lc code=end
