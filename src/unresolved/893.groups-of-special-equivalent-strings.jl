# ---
# title: 893. Groups of Special-Equivalent Strings
# id: problem893
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: String
# link: <https://leetcode.com/problems/groups-of-special-equivalent-strings/description/>
# hidden: true
# ---
# 
# You are given an array `A` of strings.
# 
# A _move  onto `S`_ consists of swapping any two even indexed characters of
# `S`, or any two odd indexed characters of `S`.
# 
# Two strings `S` and `T` are  _special-equivalent_  if after any number of
# _moves onto`S`_, `S == T`.
# 
# For example, `S = "zzxy"` and `T = "xyzz"` are special-equivalent because we
# may make the moves `"zzxy" -> "xzzy" -> "xyzz"` that swap `S[0]` and `S[2]`,
# then `S[1]` and `S[3]`.
# 
# Now, a _group of special-equivalent strings from`A`_ is a non-empty subset of
# A such that:
# 
#   1. Every pair of strings in the group are special equivalent, and;
#   2. The group is the largest size possible (ie., there isn't a string S not in the group such that S is special equivalent to every string in the group)
# 
# Return the number of groups of special-equivalent strings from `A`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: ["abcd","cdab","cbad","xyzz","zzxy","zzyx"]
#     Output: 3
#     Explanation:
#     One group is ["abcd", "cdab", "cbad"], since they are all pairwise special equivalent, and none of the other strings are all pairwise special equivalent to these.
#     
#     The other two groups are ["xyzz", "zzxy"] and ["zzyx"].  Note that in particular, "zzxy" is not special equivalent to "zzyx".
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: ["abc","acb","bac","bca","cab","cba"]
#     Output: 3
# 
# 
# 
# **Note:**
# 
#   * `1 <= A.length <= 1000`
#   * `1 <= A[i].length <= 20`
#   * All `A[i]` have the same length.
#   * All `A[i]` consist of only lowercase letters.
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
