@testset "Test Solve System" begin
    
    TOL = 1E-10

    A = [1.0 -1 1 1; 2 -1 -1 0; 1 -2 0 1; 5 0 1 -1]
    b = [4.0, -3, 1, 5]
    x = [0, -1, 4, -1]

    x_calc = solve_system(A, b)
    @test norm(x - x_calc, Inf) ≈ 0 atol = tol

    A = [1.0 -1 1 1; 2 -1 -1 0; 1 -2 0 1; 5 0 1 -1]
    b = [4.0, -3, 1, 4]
    x = [0, -2/3, 11/3, -1/3]

    x_calc = solve_system(A, b) 
    @test norm(x - x_calc, Inf) ≈ 0 atol = tol

end

