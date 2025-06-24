using Symbolics, Nemo
using Test
using Plots

# Expression substitution exercises from chapter 1.1
@variables x
ex = x^2 + x*3 - 4
@test Symbolics.substitute(ex, Dict(x => 2)) == 6

# Example 7
@variables p
ex = p^2 + 2*p
@test Symbolics.substitute(ex, Dict(p => 4)) == 24

# Example 8
ex = p^2 + 2*p -3
@test Symbolics.symbolic_solve(ex, p) == BigInt[1, -3]

# Make a callable function for plotting
f_expr = build_function(ex, p)  # returns an anonymous function (as an expression)
f = eval(f_expr)                # evaluate it to get an actual Julia function

x_vals = range(-5, 5, length=100)
y_vals = f.(x_vals)             # now you can broadcast-call

plot(x_vals, y_vals, label="f(p) = p² + 2p - 3", xlabel="p", ylabel="f(p)", title="Plot of f(p)")

# Save plot to a file
savefig("example8_plot.png")
