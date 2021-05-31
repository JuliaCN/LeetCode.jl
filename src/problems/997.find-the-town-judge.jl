# ---
# title: 997. Find the Town Judge
# id: problem997
# author: Indigo
# date: 2021-05-31
# difficulty: Easy
# categories: Graph
# link: <https://leetcode.com/problems/find-the-town-judge/description/>
# hidden: true
# ---
# 
# In a town, there are `N` people labelled from `1` to `N`.  There is a rumor
# that one of these people is secretly the town judge.
# 
# If the town judge exists, then:
# 
#   1. The town judge trusts nobody.
#   2. Everybody (except for the town judge) trusts the town judge.
#   3. There is exactly one person that satisfies properties 1 and 2.
# 
# You are given `trust`, an array of pairs `trust[i] = [a, b]` representing that
# the person labelled `a` trusts the person labelled `b`.
# 
# If the town judge exists and can be identified, return the label of the town
# judge.  Otherwise, return `-1`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: N = 2, trust = [[1,2]]
#     Output: 2
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: N = 3, trust = [[1,3],[2,3]]
#     Output: 3
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: N = 3, trust = [[1,3],[2,3],[3,1]]
#     Output: -1
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: N = 3, trust = [[1,2],[2,3]]
#     Output: -1
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: N = 4, trust = [[1,3],[1,4],[2,3],[2,4],[4,3]]
#     Output: 3
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= N <= 1000`
#   * `0 <= trust.length <= 10^4`
#   * `trust[i].length == 2`
#   * `trust[i]` are all different
#   * `trust[i][0] != trust[i][1]`
#   * `1 <= trust[i][0], trust[i][1] <= N`
# 
# 
## @lc code=start
using LeetCode

function find_judge(N::Int, trust::Vector{Vector{Int}})
    cnt = fill(0, N)
    for t in trust
        cnt[t[1]] -= 1
        cnt[t[2]] += 1
    end
    res = findfirst(==(N - 1), cnt)
    return isnothing(res) ? -1 : res
end
## @lc code=end
