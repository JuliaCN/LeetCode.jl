"""
@lc app=leetcode id=1 lang=python

[1] Two Sum

https://leetcode.com/problems/two-sum/description/

algorithms
Easy (44.95%)
Total Accepted:    2.5M
Total Submissions: 5.5M
Testcase Example:  '[2,7,11,15]\n9'

<p>Given an array of integers, return <strong>indices</strong> of the two
numbers such that they add up to a specific target.</p>

<p>You may assume that each input would have
<strong><em>exactly</em></strong> one solution, and you may not use the
<em>same</em> element twice.</p>

<p><strong>Example:</strong></p>

<pre>
Given nums = [2, 7, 11, 15], target = 9,

Because nums[<strong>0</strong>] + nums[<strong>1</strong>] = 2 + 7 = 9,
return [<strong>0</strong>, <strong>1</strong>].
</pre>

"""
function two_sum(nums::Vector{Int}, target::Int)::Union{Nothing,Tuple{Int,Int}}
    seen = Dict{Int,Int}()
    for (i, n) in enumerate(nums)
        m = target - n
        if haskey(seen, m)
            return seen[m], i
        else
            seen[n] = i
        end
    end
end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

