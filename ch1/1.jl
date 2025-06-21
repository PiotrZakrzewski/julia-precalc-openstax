 using Symbolics
 using Test

 # Expression substitution exerices from chapter 1.1
 @variables x
 ex = x^2 + x*3 - 4
 @test Symbolics.substitute(ex, Dict([x => 2])) == 6

 # Example 7
 @variables p
 ex = p^2 + 2*p
 @test Symbolics.substitute(ex, Dict([p => 4])) == 24
