# ---
# title: 433. Minimum Genetic Mutation
# id: problem433
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: 
# link: <https://leetcode.com/problems/minimum-genetic-mutation/description/>
# hidden: true
# ---
# 
# A gene string can be represented by an 8-character long string, with choices
# from `"A"`, `"C"`, `"G"`, `"T"`.
# 
# Suppose we need to investigate about a mutation (mutation from "start" to
# "end"), where ONE mutation is defined as ONE single character changed in the
# gene string.
# 
# For example, `"AACCGGTT"` -> `"AACCGGTA"` is 1 mutation.
# 
# Also, there is a given gene "bank", which records all the valid gene
# mutations. A gene must be in the bank to make it a valid gene string.
# 
# Now, given 3 things - start, end, bank, your task is to determine what is the
# minimum number of mutations needed to mutate from "start" to "end". If there
# is no such a mutation, return -1.
# 
# **Note:**
# 
#   1. Starting point is assumed to be valid, so it might not be included in the bank.
#   2. If multiple mutations are needed, all mutations during in the sequence must be valid.
#   3. You may assume start and end string is not the same.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     start: "AACCGGTT"
#     end:   "AACCGGTA"
#     bank: ["AACCGGTA"]
#     
#     return: 1
#     
# 
# 
# 
# **Example 2:**
# 
#     
#     
#     start: "AACCGGTT"
#     end:   "AAACGGTA"
#     bank: ["AACCGGTA", "AACCGCTA", "AAACGGTA"]
#     
#     return: 2
#     
# 
# 
# 
# **Example 3:**
# 
#     
#     
#     start: "AAAAACCC"
#     end:   "AACCCCCC"
#     bank: ["AAAACCCC", "AAACCCCC", "AACCCCCC"]
#     
#     return: 3
#     
# 
# 
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
