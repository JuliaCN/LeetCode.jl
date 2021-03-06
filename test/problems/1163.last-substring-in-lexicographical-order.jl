@testset "1163.last-substring-in-lexicographical-order.jl" begin
    @test last_substring("arpzrkqizlvqouudiggnezejhhuaanmaickndesynbkscubboihueuatpbhclzifkrcjhncllfdyqeawmdcefyhcnzciypnrezcu") ==
          "zrkqizlvqouudiggnezejhhuaanmaickndesynbkscubboihueuatpbhclzifkrcjhncllfdyqeawmdcefyhcnzciypnrezcu"
    @test last_substring("abab") == "bab"
    @test last_substring("leetcode") == "tcode"
end