@testset "81.search-in-rotated-sorted-array-ii.jl" begin
    @test search_rotate([2, 5, 6, 0, 0, 1, 2], 0) == true
    @test search_rotate([2, 5, 6, 0, 0, 1, 2], 3) == false
    @test search_rotate([2, 5, 6, 0, 0, 1, 2], 2) == true
    @test search_rotate([2, 5, 6, 0, 0, 1, 2], 1) == true
    @test search_rotate([2, 5, 6, 0, 0, 1, 2], 4) == false
    @test search_rotate([2, 5, 6, 0, 0, 1, 2], 5) == true
    @test search_rotate([2, 5, 6, 0, 0, 1, 2], 6) == true
    @test search_rotate([2, 5, 6, 0, 0, 1, 2], 7) == false
    arr = collect(1:30)
    for i in 1:29
        na = circshift(arr, i) 
        for j in 1:30
            @test search_rotate(na, j) == true
        end
    end
end
