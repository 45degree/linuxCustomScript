#!/bin/bash

function disable_replace() {
	# if command is alias, remove it
	if [ -n "$(type rm | grep alias)" ]; then
		unalias rm
	fi

	if [ -n "$(type ls | grep alias)" ]; then
		unalias ls
	fi

	if [ -n "$(type ll | grep alias)" ]; then
		unalias ll
	fi

	if [ -n "$(type tree | grep alias)" ]; then
		unalias tree
	fi
}

function enable_replace() {
	disable_replace
	alias rm=trash-put
	alias ls=exa\ --icons
	alias ll=exa\ --long\ --header\ --git\ --icons\ -@
	alias tree=exa\ -T\ --icons
}
