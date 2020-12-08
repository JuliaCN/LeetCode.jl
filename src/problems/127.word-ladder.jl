# ---
# title: 127. Word Ladder
# id: problem127
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Breadth-first Search
# link: <https://leetcode.com/problems/word-ladder/description/>
# hidden: true
# ---
# 
# Given two words ( _beginWord_ and _endWord_ ), and a dictionary's word list,
# find the length of shortest transformation sequence from _beginWord_ to
# _endWord_ , such that:
# 
#   1. Only one letter can be changed at a time.
#   2. Each transformed word must exist in the word list.
# 
# **Note:**
# 
#   * Return 0 if there is no such transformation sequence.
#   * All words have the same length.
#   * All words contain only lowercase alphabetic characters.
#   * You may assume no duplicates in the word list.
#   * You may assume _beginWord_ and _endWord_ are non-empty and are not the same.
# 
# **Example 1:**
# 
#     
#     
#     Input:
#     beginWord = "hit",
#     endWord = "cog",
#     wordList = ["hot","dot","dog","lot","log","cog"]
#     
#     Output: 5
#     
#     Explanation: As one shortest transformation is "hit" -> "hot" -> "dot" -> "dog" -> "cog",
#     return its length 5.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input:
#     beginWord = "hit"
#     endWord = "cog"
#     wordList = ["hot","dot","dog","lot","log"]
#     
#     Output:  0
#     
#     Explanation:  The endWord "cog" is not in wordList, therefore no possible ** ** transformation.
#     
# 
# 
## @lc code=start
using LeetCode
using DataStructures
function ladder_length(begin_word::String, end_word::String, word_list::Vector{String})::Int
    function isadj(s1, s2)
        flg = false
        for i in 1:length(s1)
            if s1[i] != s2[i]
                if flg
                    return false
                else
                    flg = true
                end
            end
        end
        return true
    end
    if !(end_word in word_list)
        return 0
    end
    !(begin_word in word_list) && push!(word_list, begin_word)
    s, t = findall(x -> x == begin_word, word_list)[1],
    findall(x -> x == end_word, word_list)[1]
    ## println(s, ", ", t)
    ### wl = collect.(word_list)
    len = length(word_list)
    edges = [Set{Int}() for i in 1:len]
    ### construct adj list
    for i in 1:len
        for j in (i + 1):len
            if isadj(word_list[i], word_list[j])
                push!(edges[i], j)
                push!(edges[j], i)
            end
        end
    end
    ## BFS
    qs, qt = Queue{Int}(), Queue{Int}()
    dists = [0 for i in 1:len]
    visited = [0 for i in 1:len]
    enqueue!(qs, s)
    enqueue!(qt, t)
    visited[s] = 1
    visited[t] = 2
    dists[s] = dists[t] = 1
    while !isempty(qs) && !isempty(qt)
        rt1, rt2 = dequeue!(qs), dequeue!(qt)
        dis1, dis2 = dists[rt1] + 1, dists[rt2] + 1
        ## println(rt1, " ", dis1)
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
## @lc code=end
