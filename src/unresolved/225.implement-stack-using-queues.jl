# ---
# title: 225. Implement Stack using Queues
# id: problem225
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: Stack, Design
# link: <https://leetcode.com/problems/implement-stack-using-queues/description/>
# hidden: true
# ---
# 
# Implement a last in first out (LIFO) stack using only two queues. The
# implemented stack should support all the functions of a normal queue (`push`,
# `top`, `pop`, and `empty`).
# 
# Implement the `MyStack` class:
# 
#   * `void push(int x)` Pushes element x to the top of the stack.
#   * `int pop()` Removes the element on the top of the stack and returns it.
#   * `int top()` Returns the element on the top of the stack.
#   * `boolean empty()` Returns `true` if the stack is empty, `false` otherwise.
# 
# **Notes:**
# 
#   * You must use **only** standard operations of a queue, which means only `push to back`, `peek/pop from front`, `size`, and `is empty` operations are valid.
#   * Depending on your language, the queue may not be supported natively. You may simulate a queue using a list or deque (double-ended queue), as long as you use only a queue's standard operations.
# 
# **Follow-up:** Can you implement the stack such that each operation is
# **[amortized](https://en.wikipedia.org/wiki/Amortized_analysis)** `O(1)` time
# complexity? In other words, performing `n` operations will take overall `O(n)`
# time even if one of those operations may take longer.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     **Input**
#     ["MyStack", "push", "push", "top", "pop", "empty"]
#     [[], [1], [2], [], [], []]
#     **Output**
#     [null, null, null, 2, 2, false]
#     
#     **Explanation**
#     MyStack myStack = new MyStack();
#     myStack.push(1);
#     myStack.push(2);
#     myStack.top(); // return 2
#     myStack.pop(); // return 2
#     myStack.empty(); // return False
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= x <= 9`
#   * At most `100` calls will be made to `push`, `pop`, `top`, and `empty`.
#   * All the calls to `pop` and `top` are valid.
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
