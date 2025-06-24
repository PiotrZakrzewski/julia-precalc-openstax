JULIA = julia --project=.

.PHONY: setup run shell

## Install required packages
setup:
	$(JULIA) -e 'using Pkg; Pkg.instantiate()'

run:
	$(JULIA) ch1/*.jl

shell:
	$(JULIA) 
