SHELL := /bin/bash -o pipefail -o errexit

help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
setup:             ## Sets up hugo
	mkdir ~/Downloads && wget -P ~/Downloads && https://github.com/gohugoio/hugo/releases/download/v0.83.1/hugo_0.83.1_Linux-64bit.tar.gz && mkdir ~/bin && cd ~/bin && tar -xvzf ~/Downloads/hugo_0.8.3.1_Linux-64bit.tar.gz 
test:              ## Runs hugo check
	~/bin/hugo check
generate:          ## Generates static html files
	~/bin/hugo
