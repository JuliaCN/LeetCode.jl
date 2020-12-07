# ---
# title: 197. Rising Temperature
# id: problem197
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: 
# link: <https://leetcode.com/problems/rising-temperature/description/>
# hidden: true
# ---
# 
# Table: `Weather`
# 
#     
#     
#     +---------------+---------+
#     | Column Name   | Type    |
#     +---------------+---------+
#     | id            | int     |
#     | recordDate    | date    |
#     | temperature   | int     |
#     +---------------+---------+
#     id is the primary key for this table.
#     This table contains information about the temperature in a certain day.
#     
# 
# 
# 
# Write an SQL query to find all dates' `id` with higher temperature compared to
# its previous dates (yesterday).
# 
# Return the result table in **any order**.
# 
# The query result format is in the following example:
# 
#     
#     
#     Weather
#     +----+------------+-------------+
#     | id | recordDate | Temperature |
#     +----+------------+-------------+
#     | 1  | 2015-01-01 | 10          |
#     | 2  | 2015-01-02 | 25          |
#     | 3  | 2015-01-03 | 20          |
#     | 4  | 2015-01-04 | 30          |
#     +----+------------+-------------+
#     
#     Result table:
#     +----+
#     | id |
#     +----+
#     | 2  |
#     | 4  |
#     +----+
#     In 2015-01-02, temperature was higher than the previous day (10 -> 25).
#     In 2015-01-04, temperature was higher than the previous day (30 -> 20).
#     
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
