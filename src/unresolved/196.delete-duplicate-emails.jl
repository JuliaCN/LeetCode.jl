# ---
# title: 196. Delete Duplicate Emails
# id: problem196
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: 
# link: <https://leetcode.com/problems/delete-duplicate-emails/description/>
# hidden: true
# ---
# 
# Write a SQL query to **delete** all duplicate email entries in a table named
# `Person`, keeping only unique emails based on its _smallest_ **Id**.
# 
#     
#     
#     +----+------------------+
#     | Id | Email            |
#     +----+------------------+
#     | 1  | john@example.com |
#     | 2  | bob@example.com  |
#     | 3  | john@example.com |
#     +----+------------------+
#     Id is the primary key column for this table.
#     
# 
# For example, after running your query, the above `Person` table should have
# the following rows:
# 
#     
#     
#     +----+------------------+
#     | Id | Email            |
#     +----+------------------+
#     | 1  | john@example.com |
#     | 2  | bob@example.com  |
#     +----+------------------+
#     
# 
# **Note:**
# 
# Your output is the whole `Person` table after executing your sql. Use `delete`
# statement.
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
