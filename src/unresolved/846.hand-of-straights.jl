# ---
# title: 846. Hand of Straights
# id: problem846
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Ordered Map
# link: <https://leetcode.com/problems/hand-of-straights/description/>
# hidden: true
# ---
# 
# Alice has a `hand` of cards, given as an array of integers.
# 
# Now she wants to rearrange the cards into groups so that each group is size
# `W`, and consists of `W` consecutive cards.
# 
# Return `true` if and only if she can.
# 
# **Note:** This question is the same as 1296:
# <https://leetcode.comhttps://leetcode.com/problems/divide-array-in-sets-of-k-consecutive-numbers/>
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: hand = [1,2,3,6,2,3,4,7,8], W = 3
#     Output: true
#     Explanation: Alice's hand can be rearranged as [1,2,3],[2,3,4],[6,7,8]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: hand = [1,2,3,4,5], W = 4
#     Output: false
#     Explanation: Alice's hand can't be rearranged into groups of 4.
#     
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= hand.length <= 10000`
#   * `0 <= hand[i] <= 10^9`
#   * `1 <= W <= hand.length`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
