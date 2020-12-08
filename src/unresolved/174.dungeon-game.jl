# ---
# title: 174. Dungeon Game
# id: problem174
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Binary Search, Dynamic Programming
# link: <https://leetcode.com/problems/dungeon-game/description/>
# hidden: true
# ---
# 
# The demons had captured the princess ( **P** ) and imprisoned her in the
# bottom-right corner of a dungeon. The dungeon consists of M x N rooms laid out
# in a 2D grid. Our valiant knight ( **K** ) was initially positioned in the
# top-left room and must fight his way through the dungeon to rescue the
# princess.
# 
# The knight has an initial health point represented by a positive integer. If
# at any point his health point drops to 0 or below, he dies immediately.
# 
# Some of the rooms are guarded by demons, so the knight loses health (
# _negative_ integers) upon entering these rooms; other rooms are either empty (
# _0 's_) or contain magic orbs that increase the knight's health ( _positive_
# integers).
# 
# In order to reach the princess as quickly as possible, the knight decides to
# move only rightward or downward in each step.
# 
# 
# 
# **Write a function to determine the knight 's minimum initial health so that
# he is able to rescue the princess.**
# 
# For example, given the dungeon below, the initial health of the knight must be
# at least **7** if he follows the optimal path `RIGHT-> RIGHT -> DOWN -> DOWN`.
# 
# -2 (K) | -3 | 3  
# ---|---|---  
# -5 | -10 | 1  
# 10 | 30 | -5 (P)  
#   
# 
# 
# **Note:**
# 
#   * The knight's health has no upper bound.
#   * Any room can contain threats or power-ups, even the first room the knight enters and the bottom-right room where the princess is imprisoned.
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
