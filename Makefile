#
# Makefile
#

# $* stem of implicit rule match 
# $@ target 
# $< first prerequisite


vim_plugins = vim-processing

targets = $(addprefix vim/pack/dk/start/, ${vim_plugins})

all: ${targets}

vim/pack/dk/start:
	mkdir -p vim/pack/dk/start

vim/pack/dk/start/vim-processing: vim/pack/dk/start
	cd vim/pack/dk/start ;\
	git clone https://github.com/sophacles/vim-processing.git

clean:
	rm -rf vim



