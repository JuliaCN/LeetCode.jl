# ---
# title: 284. Peeking Iterator
# id: problem284
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Design
# link: <https://leetcode.com/problems/peeking-iterator/description/>
# hidden: true
# ---
# 
# Given an Iterator class interface with methods: `next()` and `hasNext()`,
# design and implement a PeekingIterator that support the `peek()` operation --
# it essentially peek() at the element that will be returned by the next call to
# next().
# 
# **Example:**
# 
#     
#     
#     Assume that the iterator is initialized to the beginning of the list: **[1,2,3]**.
#     
#     Call **next()** gets you **1** , the first element in the list.
#     Now you call **peek()** and it returns **2** , the next element. Calling **next()** after that _**still**_ return **2**. 
#     You call **next()** the final time and it returns **3** , the last element. 
#     Calling **hasNext()** after that should return **false**.
#     
# 
# **Follow up** : How would you extend your design to be generic and work with
# all types, not just integer?
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
