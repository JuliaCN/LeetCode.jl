@testset "622.design-circular-queue.jl" begin
    ## test 1
    @testset "test1" begin
        que = MyCircularQueue(3)
        @test all([
            en_queue(que, 1) == true,
            en_queue(que, 2) == true,
            en_queue(que, 3) == true,
            en_queue(que, 4) == false,
            rear(que) == 3,
            is_full(que) == true,
            de_queue(que) == true,
            en_queue(que, 4) == true,
            rear(que) == 4])
    end
    
    # test 2
    @testset "test2" begin
        que = MyCircularQueue(3)
        @test all([en_queue(que, 2) == true,
        rear(que) == 2, 
        front(que) == 2,
        de_queue(que) == true,
        front(que) == -1,
        de_queue(que) == false,
        front(que) == -1,
        en_queue(que, 4) == true,
        en_queue(que, 2) == true,
        en_queue(que, 2) == true,
        en_queue(que, 3) == false])
    end
end