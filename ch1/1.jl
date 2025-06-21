 using Symbolics, Nemo;
 using Test

 # Expression substitution exerices from chapter 1.1
 @variables x
 ex = x^2 + x*3 - 4
 @test Symbolics.substitute(ex, Dict([x => 2])) == 6

 # Example 7
 @variables p
 ex = p^2 + 2*p
 @test Symbolics.substitute(ex, Dict([p => 4])) == 24


 # Example 8
 ex = p^2 + 2*p -3
 @test Symbolics.symbolic_solve(ex, p) == BigInt[1, -3]
