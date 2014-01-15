BASE_DIR         = $(shell pwd)
REBAR           ?= $(BASE_DIR)/rebar

.PHONY: all compile clean update_locked_config

all: update_locked_config

compile: deps
	@$(REBAR) compile

deps:
	@$(REBAR) get-deps

clean:
	-rm -rf deps

update_locked_config: compile
	@$(REBAR) lock-deps 

