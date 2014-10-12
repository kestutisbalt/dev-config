#!/bin/bash

LOCAL_VIM_DIR=~/.vim

mkdir -p ${LOCAL_VIM_DIR}/colors

cp vimrc ~/.vimrc
cp kestutisbalt.vim ${LOCAL_VIM_DIR}/colors/
