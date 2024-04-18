#
# Makefile
#

# $* stem of implicit rule match 
# $@ target 
# $< first prerequisite


vim_plugins = vim-processing vim-nextflow csv

targets = $(addprefix vim/pack/dk/start/, ${vim_plugins})

all: ${targets}

vim/pack/dk/start:
	mkdir -p vim/pack/dk/start

vim/pack/dk/start/vim-processing: vim/pack/dk/start
	cd $<; git clone https://github.com/sophacles/vim-processing.git

vim/pack/dk/start/vim-nextflow: vim/pack/dk/start
	cd $<; git clone https://github.com/LukeGoodsell/nextflow-vim

vim/pack/dk/start/csv: vim/pack/dk/start
	cd $<; git clone https://github.com/chrisbra/csv.vim

clean:
	rm -rf vim



