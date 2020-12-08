# ---
# title: 1195. Fizz Buzz Multithreaded
# id: problem1195
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: 
# link: <https://leetcode.com/problems/fizz-buzz-multithreaded/description/>
# hidden: true
# ---
# 
# Write a program that outputs the string representation of numbers from 1 to
# _n_ , however:
# 
#   * If the number is divisible by 3, output "fizz".
#   * If the number is divisible by 5, output "buzz".
#   * If the number is divisible by both 3 and 5, output "fizzbuzz".
# 
# For example, for `n = 15`, we output: `1, 2, fizz, 4, buzz, fizz, 7, 8, fizz,
# buzz, 11, fizz, 13, 14, fizzbuzz`.
# 
# Suppose you are given the following code:
# 
#     
#     
#     class FizzBuzz {
#       public FizzBuzz(int n) { ... }               // constructor
#       public void fizz(printFizz) { ... }          // only output "fizz"
#       public void buzz(printBuzz) { ... }          // only output "buzz"
#       public void fizzbuzz(printFizzBuzz) { ... }  // only output "fizzbuzz"
#       public void number(printNumber) { ... }      // only output the numbers
#     }
# 
# Implement a multithreaded version of `FizzBuzz` with **four** threads. The
# same instance of `FizzBuzz` will be passed to four different threads:
# 
#   1. Thread A will call `fizz()` to check for divisibility of 3 and outputs `fizz`.
#   2. Thread B will call `buzz()` to check for divisibility of 5 and outputs `buzz`.
#   3. Thread C will call `fizzbuzz()` to check for divisibility of 3 and 5 and outputs `fizzbuzz`.
#   4. Thread D will call `number()` which should only output the numbers.
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
