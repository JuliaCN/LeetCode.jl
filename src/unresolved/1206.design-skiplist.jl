# ---
# title: 1206. Design Skiplist
# id: problem1206
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Design
# link: <https://leetcode.com/problems/design-skiplist/description/>
# hidden: true
# ---
# 
# Design a Skiplist without using any built-in libraries.
# 
# _A Skiplist is a data structure that takes  O(log(n)) time to `add`, `erase`
# and `search`. Comparing with treap and red-black tree which has the same
# function and performance, the code length of Skiplist can be comparatively
# short and the idea behind Skiplists are just simple linked lists._
# 
# _For example:  we have a Skiplist containing `[30,40,50,60,70,90]` and we want
# to add `80` and `45` into it. The Skiplist works this way:_
# 
# ![](https://assets.leetcode.com/uploads/2019/09/27/1506_skiplist.gif)  
# Artyom Kalinin [CC BY-SA 3.0], via [Wikimedia
# Commons](https://commons.wikimedia.org/wiki/File:Skip_list_add_element-en.gif
# "Artyom Kalinin \[CC BY-SA 3.0 \(https://creativecommons.org/licenses/by-
# sa/3.0\)\], via Wikimedia Commons")
# 
# _You can see there are many layers in the Skiplist. Each layer is a sorted
# linked list. With the help of the top layers,`add` , `erase` and `search `can
# be faster than O(n). It can be proven that the average time complexity for
# each operation is O(log(n)) and space complexity is O(n)._
# 
# To be specific, your design should include these functions:
# 
#   * `bool search(int target)` : Return whether the `target` exists in the Skiplist or not.
#   * `void add(int num)`: Insert a value into the SkipList. 
#   * `bool erase(int num)`: Remove a value in the Skiplist. If `num` does not exist in the Skiplist, do nothing and return false. If there exists multiple `num` values, removing any one of them is fine.
# 
# See more about Skiplist : <https://en.wikipedia.org/wiki/Skip_list>
# 
# Note that duplicates may exist in the Skiplist, your code needs to handle this
# situation.
# 
# 
# 
# **Example:**
# 
#     
#     
#     Skiplist skiplist = new Skiplist();
#     
#     skiplist.add(1);
#     skiplist.add(2);
#     skiplist.add(3);
#     skiplist.search(0);   // return false.
#     skiplist.add(4);
#     skiplist.search(1);   // return true.
#     skiplist.erase(0);    // return false, 0 is not in skiplist.
#     skiplist.erase(1);    // return true.
#     skiplist.search(1);   // return false, 1 has already been erased.
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= num, target <= 20000`
#   * At most `50000` calls will be made to `search`, `add`, and `erase`.
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
