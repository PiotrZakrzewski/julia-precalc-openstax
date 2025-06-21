JULIA = julia --project=.

.PHONY: setup run plot clean help

## Install required packages
setup:
	$(JULIA) -e 'using Pkg; Pkg.instantiate()'

run:
	$(JULIA) main.jl
