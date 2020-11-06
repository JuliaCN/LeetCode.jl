#
# @lc app=leetcode id=127 lang=julia
#
# [127] Word Ladder
#=
Given two words (beginWord and endWord), and a dictionary's word list, find the length of shortest transformation sequence from beginWord to endWord, such that:

Only one letter can be changed at a time.
Each transformed word must exist in the word list.
Note:

Return 0 if there is no such transformation sequence.
All words have the same length.
All words contain only lowercase alphabetic characters.
You may assume no duplicates in the word list.
You may assume beginWord and endWord are non-empty and are not the same.
Example 1:

Input:
beginWord = "hit",
endWord = "cog",
wordList = ["hot","dot","dog","lot","log","cog"]

Output: 5

Explanation: As one shortest transformation is "hit" -> "hot" -> "dot" -> "dog" -> "cog",
return its length 5.
Example 2:

Input:
beginWord = "hit"
endWord = "cog"
wordList = ["hot","dot","dog","lot","log"]

Output: 0

Explanation: The endWord "cog" is not in wordList, therefore no possible transformation.
=#
# import Pkg
# Pkg.add("DataStructures")
using DataStructures
# @lc code=start
function ladderLength(beginWord::String, endWord::String, wordList::Vector{String})::Int
    if !(endWord in wordList) 
        return 0
    end
    !(beginWord in wordList) && push!(wordList, beginWord)
    s, t = findall(x -> x == beginWord, wordList)[1], findall(x -> x == endWord, wordList)[1]
    wl2 = collect.(wordList)
    # println(s, " ", t)
    len = length(wordList)
    edges = [Set{Int}() for i in 1:len]
    ## construct adj list
    for i in 1:len
        for j in i+1:len
            if sum(wl2[i] .!= wl2[j]) == 1
                push!(edges[i], j)
                push!(edges[j], i)
            end
        end
    end
    ## BFS
    qs, qt = Queue{Int}(), Queue{Int}()
    dists = [0 for i in 1:len]
    visited = [0 for i in 1:len]
    enqueue!(qs, s); enqueue!(qt, t);
    visited[s] = 1; visited[t] = 2;
    dists[s] = dists[t] = 1;
    while !isempty(qs) && !isempty(qt)
        rt1, rt2 = dequeue!(qs), dequeue!(qt)
        dis1, dis2 = dists[rt1] + 1, dists[rt2] + 1 
        # println(rt1, " ", dis1)
        for neib in edges[rt1]
            if visited[neib] == 2
                return dis1 + dists[neib] - 1
            elseif visited[neib] == 0
                visited[neib] = 1
                enqueue!(qs, neib)
                dists[neib] = dis1
            end
        end
        for neib in edges[rt2]
            if visited[neib] == 1
                return dis2 + dists[neib] - 1
            elseif visited[neib] == 0
                visited[neib] = 2
                enqueue!(qt, neib)
                dists[neib] = dis2
            end
        end 
    end
    return 0
end

# @lc code=end

