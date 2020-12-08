# ---
# title: 1125. Smallest Sufficient Team
# id: problem1125
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Dynamic Programming, Bit Manipulation
# link: <https://leetcode.com/problems/smallest-sufficient-team/description/>
# hidden: true
# ---
# 
# In a project, you have a list of required skills `req_skills`, and a list of
# `people`.  The i-th person `people[i]` contains a list of skills that person
# has.
# 
# Consider a _sufficient team_ : a set of people such that for every required
# skill in `req_skills`, there is at least one person in the team who has that
# skill.  We can represent these teams by the index of each person: for example,
# `team = [0, 1, 3]` represents the people with skills `people[0]`, `people[1]`,
# and `people[3]`.
# 
# Return **any**  sufficient team of the smallest possible size, represented by
# the index of each person.
# 
# You may return the answer in any order.  It is guaranteed an answer exists.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: req_skills = ["java","nodejs","reactjs"], people = [["java"],["nodejs"],["nodejs","reactjs"]]
#     Output: [0,2]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: req_skills = ["algorithms","math","java","reactjs","csharp","aws"], people = [["algorithms","math","java"],["algorithms","math","reactjs"],["java","csharp","aws"],["reactjs","csharp"],["csharp","math"],["aws","java"]]
#     Output: [1,2]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= req_skills.length <= 16`
#   * `1 <= people.length <= 60`
#   * `1 <= people[i].length, req_skills[i].length, people[i][j].length <= 16`
#   * Elements of `req_skills` and `people[i]` are (respectively) distinct.
#   * `req_skills[i][j], people[i][j][k]` are lowercase English letters.
#   * Every skill in `people[i]` is a skill in `req_skills`.
#   * It is guaranteed a sufficient team exists.
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
