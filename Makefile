
DIR=~/.vim/pack/plugins/start/valk-vim
install:
	rm -rf $(DIR)/*
	mkdir -p $(DIR)
	cp -r ./* $(DIR)
