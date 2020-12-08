# ---
# title: 621. Task Scheduler
# id: problem621
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Array, Greedy, Queue
# link: <https://leetcode.com/problems/task-scheduler/description/>
# hidden: true
# ---
# 
# Given a characters array `tasks`, representing the tasks a CPU needs to do,
# where each letter represents a different task. Tasks could be done in any
# order. Each task is done in one unit of time. For each unit of time, the CPU
# could complete either one task or just be idle.
# 
# However, there is a non-negative integer `n` that represents the cooldown
# period between two **same tasks**  (the same letter in the array), that is
# that there must be at least `n` units of time between any two same tasks.
# 
# Return _the least number of units of times that the CPU will take to finish
# all the given tasks_.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: tasks = ["A","A","A","B","B","B"], n = 2
#     Output: 8
#     Explanation: 
#     A -> B -> idle -> A -> B -> idle -> A -> B
#     There is at least 2 units of time between any two same tasks.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: tasks = ["A","A","A","B","B","B"], n = 0
#     Output: 6
#     Explanation: On this case any permutation of size 6 would work since n = 0.
#     ["A","A","A","B","B","B"]
#     ["A","B","A","B","A","B"]
#     ["B","B","B","A","A","A"]
#     ...
#     And so on.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: tasks = ["A","A","A","A","A","A","B","C","D","E","F","G"], n = 2
#     Output: 16
#     Explanation: 
#     One possible solution is
#     A -> B -> C -> A -> D -> E -> A -> F -> G -> A -> idle -> idle -> A -> idle -> idle -> A
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= task.length <= 104`
#   * `tasks[i]` is upper-case English letter.
#   * The integer `n` is in the range `[0, 100]`.
# 
# 
## @lc code=start
using LeetCode

function least_interval(tasks::Vector{Char}, n::Int)::Int
    counter = fill(0, 26)
    for ch in tasks
        counter[UInt8(ch) - 0x40] += 1
    end
    sort!(counter, rev = true)
    res = (n + 1) * counter[1] - n
    for i in 2:26
        if counter[i] == counter[i - 1]
            res += 1
        else
            break
        end
    end
    return max(length(tasks), res)
end
least_interval(['A','A','A','B','B','B'], 2)
## @lc code=end
