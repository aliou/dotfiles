#!/bin/sh

parse_svn_revision() {
	local DIRTY REV=$(svn info 2>/dev/null | grep Revision | sed -e 's/Revision: //')
	[ "$REV" ] || return
	[ "$(svn st)" ] && DIRTY='#'
	echo "{rev :$REV$DIRTY}"
}
