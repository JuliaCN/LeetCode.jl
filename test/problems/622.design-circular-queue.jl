@testset "622.design-circular-queue.jl" begin
    function check622(k::Int, funcs::Vector{String}, paras::Vector, reses::Vector)
        que = MyCircularQueue(k) 
        all(eval(Meta.parse(func))(que, para...) == res for (func, para, res) in zip(funcs, paras, reses))
    end
    ## test 1
    funcs = ["en_queue","en_queue","en_queue","en_queue","rear","is_full","de_queue","en_queue","rear"]
    paras = [[1],[2],[3],[4],[],[],[],[4],[]]
    reses = [true,true,true,false,3,true,true,true,4]
    @test check622(3, funcs, paras, reses)
    
    funcs = ["en_queue", "rear", "front", "de_queue", "front", "de_queue", "front", "en_queue", "en_queue", "en_queue", "en_queue"]
    paras = [[2],[],[],[],[],[],[],[4],[2],[2],[3]]
    reses = [true,2,2,true,-1,false,-1,true,true,true,false]
    @test check622(3, funcs, paras, reses)
end