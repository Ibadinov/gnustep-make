#
#   aggregate.make
#
#   Makefile rules to build a set of GNUstep-base subprojects.
#
#   Copyright (C) 1997 Free Software Foundation, Inc.
#
#   Author:  Scott Christley <scottc@net-community.com>
#
#   This file is part of the GNUstep Makefile Package.
#
#   This library is free software; you can redistribute it and/or
#   modify it under the terms of the GNU General Public License
#   as published by the Free Software Foundation; either version 2
#   of the License, or (at your option) any later version.
#   
#   You should have received a copy of the GNU General Public
#   License along with this library; see the file COPYING.LIB.
#   If not, write to the Free Software Foundation,
#   59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

#
# Include in the common makefile rules
#
include $(GNUSTEP_SYSTEM_ROOT)/Makefiles/rules.make

#
# The list of directory names with the subprojects 
# are in the makefile variable SUBPROJECTS
#

#
# Internal targets
#
internal-all::
	@(for f in $(SUBPROJECTS); do \
		echo Making all in $$f...;\
		(cd $$f; $(MAKE) all); \
	done)

internal-install::
	@(for f in $(SUBPROJECTS); do \
		echo Making install in $$f...;\
		(cd $$f; $(MAKE) install); \
	done)

internal-uninstall::
	@(for f in $(SUBPROJECTS); do \
		echo Making uninstall in $$f...;\
		(cd $$f; $(MAKE) uninstall); \
	done)

internal-clean::
	@(for f in $(SUBPROJECTS); do \
		echo Making clean in $$f...;\
		(cd $$f; $(MAKE) clean); \
	done)

internal-distclean::
	@(for f in $(SUBPROJECTS); do \
		echo Making distclean in $$f...;\
		(cd $$f; $(MAKE) distclean); \
	done)

internal-check::
	@(for f in $(SUBPROJECTS); do \
		echo Making check in $$f...;\
		(cd $$f; $(MAKE) check); \
	done)
