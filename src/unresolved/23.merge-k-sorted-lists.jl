# ---
# title: 23. Merge k Sorted Lists
# id: problem23
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Linked List, Divide and Conquer, Heap
# link: <https://leetcode.com/problems/merge-k-sorted-lists/description/>
# hidden: true
# ---
# 
# You are given an array of `k` linked-lists `lists`, each linked-list is sorted
# in ascending order.
# 
# _Merge all the linked-lists into one sorted linked-list and return it._
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: lists = [[1,4,5],[1,3,4],[2,6]]
#     Output: [1,1,2,3,4,4,5,6]
#     Explanation: The linked-lists are:
#     [
#       1->4->5,
#       1->3->4,
#       2->6
#     ]
#     merging them into one sorted list:
#     1->1->2->3->4->4->5->6
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: lists = []
#     Output: []
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: lists = [[]]
#     Output: []
#     
# 
# 
# 
# **Constraints:**
# 
#   * `k == lists.length`
#   * `0 <= k <= 10^4`
#   * `0 <= lists[i].length <= 500`
#   * `-10^4 <= lists[i][j] <= 10^4`
#   * `lists[i]` is sorted in **ascending order**.
#   * The sum of `lists[i].length` won't exceed `10^4`.
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
