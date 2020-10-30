"""
@lc app=leetcode id=679 lang=python3

[679] 24 Game

https://leetcode.com/problems/24-game/description/

algorithms
Hard (44.65%)
Likes:    750
Dislikes: 151
Total Accepted:    42K
Total Submissions: 90.2K
Testcase Example:  '[4,1,8,7]'


You have 4 cards each containing a number from 1 to 9.  You need to judge
whether they could operated through *, /, +, -, (, ) to get the value of
24.


Example 1:

Input: [4, 1, 8, 7]
Output: True
Explanation: (8-4) * (7-1) = 24



Example 2:

Input: [1, 2, 1, 2]
Output: False



Note:

The division operator / represents real division, not integer division.  For
example, 4 / (1 - 2/3) = 12.
Every operation done is between two numbers.  In particular, we cannot use -
as a unary operator.  For example, with [1, 1, 1, 1] as input, the expression
-1 - 1 - 1 - 1 is not allowed.
You cannot concatenate numbers together.  For example, if the input is [1, 2,
1, 2], we cannot write this as 12 + 12.





@lc code=start
"""
function judgePoint24(nums::Vector)::Bool
    n = length(nums)
    if n == 1
        return nums[1] == 24
    else
        for i in 1:n
            for j in 1:n
                if j != i
                    rest = [nums[k] for k in 1:n if k != i && k != j]
                    if judgePoint24([rest..., nums[i]+nums[j]]) ||
                        judgePoint24([rest..., nums[i]-nums[j]]) ||
                        judgePoint24([rest..., nums[j]-nums[i]]) ||
                        judgePoint24([rest..., nums[i]*nums[j]]) ||
                        (!iszero(nums[j]) && judgePoint24([rest..., nums[i]//nums[j]])) ||
                        (!iszero(nums[i]) && judgePoint24([rest..., nums[j]//nums[i]]))
                        return true
                    end
                end
            end
        end
        false
    end
end