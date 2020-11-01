"""
[240] Medium [Search a 2D Matrix II](https://leetcode.com/problems/search-a-2d-matrix-ii/description/)

Write an efficient algorithm that searches for a value in an *m* x *n* matrix. This matrix has the following properties:

+ Integers in each row are sorted in ascending from left to right.
+ Integers in each column are sorted in ascending from top to bottom.

## Example:

Consider the following matrix:

```
[
    [1,   4,  7, 11, 15],
    [2,   5,  8, 12, 19],
    [3,   6,  9, 16, 22],
    [10, 13, 14, 17, 24],
    [18, 21, 23, 26, 30]
]
```

Given target = `5`, return `true`.

Given target = `20`, return `false`.
"""
function search_matrix(matrix::Matrix{Int}, target::Int)::Bool
    row, col = size(matrix)
    i, j = row, 1

    while (i > 0 && j <= col)
        last = matrix[i, j]

        if (last == target)
            return true
        elseif last > target
            i -= 1
        else
            j += 1
        end
    end

    return false
end
