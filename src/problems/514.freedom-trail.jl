# ---
# title: 514. Freedom Trail
# id: problem514
# author: AquaIndigo
# date: 2020-11-11
# difficulty: Hard
# categories: Divide and Conquer, Dynamic Programming, Depth-first Search
# link: <https://leetcode.com/problems/freedom-trail/description/>
# hidden: true
# ---
# 
# In the video game Fallout 4, the quest "Road to Freedom" requires players to
# reach a metal dial called the "Freedom Trail Ring", and use the dial to spell
# a specific keyword in order to open the door.
# 
# Given a string **ring** , which represents the code engraved on the outer ring
# and another string **key** , which represents the keyword needs to be spelled.
# You need to find the **minimum** number of steps in order to spell all the
# characters in the keyword.
# 
# Initially, the first character of the **ring** is aligned at 12:00 direction.
# You need to spell all the characters in the string **key** one by one by
# rotating the ring clockwise or anticlockwise to make each character of the
# string **key** aligned at 12:00 direction and then by pressing the center
# button.
# 
# At the stage of rotating the ring to spell the key character **key[i]** :
# 
#   1. You can rotate the **ring** clockwise or anticlockwise **one place** , which counts as 1 step. The final purpose of the rotation is to align one of the string **ring 's** characters at the 12:00 direction, where this character must equal to the character **key[i]**.
#   2. If the character **key[i]** has been aligned at the 12:00 direction, you need to press the center button to spell, which also counts as 1 step. After the pressing, you could begin to spell the next character in the key (next stage), otherwise, you've finished all the spelling.
# 
# **Example:**
# 
# ![](https://assets.leetcode.com/uploads/2018/10/22/ring.jpg)  
#     
#     
#     Input: ring = "godding", key = "gd"
#     Output: 4
#     Explanation:
#     For the first key character 'g', since it is already in place, we just need 1 step to spell this character. 
#     For the second key character 'd', we need to rotate the ring "godding" anticlockwise by two steps to make it become "ddinggo".
#     Also, we need 1 more step for spelling.
#     So the final output is 4.
#     
# 
# **Note:**
# 
#   1. Length of both ring and **key** will be in range 1 to 100.
#   2. There are only lowercase letters in both strings and might be some duplcate characters in both strings.
#   3. It's guaranteed that string **key** could always be spelled by rotating the string **ring**.
# 
# 
## @lc code=start
using LeetCode

function find_rotate_steps(ring::String, key::String)
    lenr, lenk = length(ring), length(key)
    dp1 = fill(typemax(Int), lenr)
    dp2 = dp1[:]
    mp = [Int[] for i in 1:26]
    for i in 1:lenr
        push!(mp[ring[i] - 'a' + 1], i)
    end
    for idx in mp[key[1] - 'a' + 1]
        dp1[idx] = min(idx - 1, lenr - idx)
    end
    for i in 2:lenk
        for idx1 in mp[key[i] - 'a' + 1]
            for idx2 in mp[key[i - 1] - 'a' + 1]
                dp2[idx1] = min(
                    dp2[idx1], dp1[idx2] + min(abs(idx2 - idx1), lenr - abs(idx2 - idx1))
                )
            end
        end
        dp1, dp2 = dp2, dp1
        dp2 .= typemax(Int)
    end
    return minimum(dp1) + lenk
end
## @lc code=end
