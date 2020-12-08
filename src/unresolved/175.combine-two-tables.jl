# ---
# title: 175. Combine Two Tables
# id: problem175
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: 
# link: <https://leetcode.com/problems/combine-two-tables/description/>
# hidden: true
# ---
# 
# Table: `Person`
# 
#     
#     
#     +-------------+---------+
#     | Column Name | Type    |
#     +-------------+---------+
#     | PersonId    | int     |
#     | FirstName   | varchar |
#     | LastName    | varchar |
#     +-------------+---------+
#     PersonId is the primary key column for this table.
#     
# 
# Table: `Address`
# 
#     
#     
#     +-------------+---------+
#     | Column Name | Type    |
#     +-------------+---------+
#     | AddressId   | int     |
#     | PersonId    | int     |
#     | City        | varchar |
#     | State       | varchar |
#     +-------------+---------+
#     AddressId is the primary key column for this table.
#     
# 
# 
# 
# Write a SQL query for a report that provides the following information for
# each person in the Person table, regardless if there is an address for each of
# those people:
# 
#     
#     
#     FirstName, LastName, City, State
#     
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
