#
#   Master/tool.make
#
#   Master Makefile rules to build GNUstep-based command line tools.
#
#   Copyright (C) 1997, 2001 Free Software Foundation, Inc.
#
#   Author:  Scott Christley <scottc@net-community.com>
#   Author:  Nicola Pero <nicola@brainstorm.co.uk>
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

TOOL_NAME := $(strip $(TOOL_NAME))

ifeq ($(RULES_MAKE_LOADED),)
include $(GNUSTEP_MAKEFILES)/rules.make
endif

internal-all:: $(TOOL_NAME:=.all.tool.variables)

internal-install:: $(TOOL_NAME:=.install.tool.variables)

internal-uninstall:: $(TOOL_NAME:=.uninstall.tool.variables)

internal-clean:: $(TOOL_NAME:=.clean.tool.subprojects)
	rm -rf $(GNUSTEP_OBJ_DIR)

internal-distclean:: $(TOOL_NAME:=.distclean.tool.subprojects)
	rm -rf shared_obj static_obj shared_debug_obj shared_profile_obj \
	  static_debug_obj static_profile_obj shared_profile_debug_obj \
	  static_profile_debug_obj

$(TOOL_NAME):
	@$(MAKE) -f $(MAKEFILE_NAME) --no-print-directory --no-keep-going \
	         $@.all.tool.variables

## Local variables:
## mode: makefile
## End: