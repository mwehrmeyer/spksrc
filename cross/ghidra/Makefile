SHELL=/bin/bash

BASE_NAME = ghidra

PKG_NAME = $(BASE_NAME)Server
PKG_VERS = 11.3.1
PKG_DATE = 20250219
PKG_EXT = zip
PKG_DIST_NAME = $(BASE_NAME)_$(PKG_VERS)_PUBLIC_$(PKG_DATE).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_$(PKG_VERS)_build
PKG_DIR = $(BASE_NAME)_$(PKG_VERS)_PUBLIC

REQUIRED_MIN_DSM = 7.0

PATCH_TARGET = ghidra_patch
INSTALL_TARGET = ghidra_install

include ../../mk/spksrc.install-resources.mk

ghidra_patch:
	( \
		origPath=$(shell pwd) && \
		cd $(WORK_DIR)/$(PKG_DIR) && \
		patch -p0 < $$origPath/config.patch \
	)

.PHONY: ghidra_install
ghidra_install:
	@install -m 755 -d $(STAGING_INSTALL_PREFIX)/server
	@install -m 775 $(WORK_DIR)/$(PKG_DIR)/server/{ghidraSvr,jaas*,svrAdmin,svrUninstall} $(STAGING_INSTALL_PREFIX)/server

	@install -m 755 -d $(STAGING_INSTALL_PREFIX)/support
	@install -m 775 $(WORK_DIR)/$(PKG_DIR)/support/LaunchSupport.jar $(STAGING_INSTALL_PREFIX)/support
	@install -m 775 $(WORK_DIR)/$(PKG_DIR)/support/launch.properties $(STAGING_INSTALL_PREFIX)/support
	@install -m 775 $(WORK_DIR)/$(PKG_DIR)/support/launch.sh $(STAGING_INSTALL_PREFIX)/support

	@install -m 755 -d $(STAGING_INSTALL_PREFIX)/Ghidra/
	@install -m 775 $(WORK_DIR)/$(PKG_DIR)/Ghidra/application.properties $(STAGING_INSTALL_PREFIX)/Ghidra/

	@install -m 755 -d $(STAGING_INSTALL_PREFIX)/Ghidra/Framework/DB/lib/
	@install -m 755 -d $(STAGING_INSTALL_PREFIX)/Ghidra/Framework/DB/Module.manifest/
	@install -m 775 $(WORK_DIR)/$(PKG_DIR)/Ghidra/Framework/DB/lib/*.jar $(STAGING_INSTALL_PREFIX)/Ghidra/Framework/DB/lib

	@install -m 755 -d $(STAGING_INSTALL_PREFIX)/Ghidra/Framework/Docking/lib
	@install -m 775 $(WORK_DIR)/$(PKG_DIR)/Ghidra/Framework/Docking/lib/*.jar $(STAGING_INSTALL_PREFIX)/Ghidra/Framework/Docking/lib

	@install -m 755 -d $(STAGING_INSTALL_PREFIX)/Ghidra/Framework/FileSystem/lib
	@install -m 775 $(WORK_DIR)/$(PKG_DIR)/Ghidra/Framework/FileSystem/Module.manifest $(STAGING_INSTALL_PREFIX)/Ghidra/Framework/FileSystem/
	@install -m 775 $(WORK_DIR)/$(PKG_DIR)/Ghidra/Framework/FileSystem/lib/*.jar $(STAGING_INSTALL_PREFIX)/Ghidra/Framework/FileSystem/lib

	@install -m 755 -d $(STAGING_INSTALL_PREFIX)/Ghidra/Framework/Generic/lib
	@install -m 775 $(WORK_DIR)/$(PKG_DIR)/Ghidra/Framework/Generic/Module.manifest $(STAGING_INSTALL_PREFIX)/Ghidra/Framework/Generic/
	@install -m 775 $(WORK_DIR)/$(PKG_DIR)/Ghidra/Framework/Generic/lib/*.jar $(STAGING_INSTALL_PREFIX)/Ghidra/Framework/Generic/lib

	@install -m 755 -d $(STAGING_INSTALL_PREFIX)/Ghidra/Framework/Gui/lib
	@install -m 755 $(WORK_DIR)/$(PKG_DIR)/Ghidra/Framework/Gui/lib/*.jar $(STAGING_INSTALL_PREFIX)/Ghidra/Framework/Gui/lib

	@install -m 755 -d $(STAGING_INSTALL_PREFIX)/Ghidra/Framework/Help/lib
	@install -m 755 $(WORK_DIR)/$(PKG_DIR)/Ghidra/Framework/Help/lib/*.jar $(STAGING_INSTALL_PREFIX)/Ghidra/Framework/Help/lib

	@install -m 755 -d $(STAGING_INSTALL_PREFIX)/Ghidra/Framework/Utility/lib
	@install -m 755 $(WORK_DIR)/$(PKG_DIR)/Ghidra/Framework/Utility/lib/*.jar $(STAGING_INSTALL_PREFIX)/Ghidra/Framework/Utility/lib

	@install -m 755 -d $(STAGING_INSTALL_PREFIX)/Ghidra/Features/GhidraServer
	@cp -r $(WORK_DIR)/$(PKG_DIR)/Ghidra/Features/GhidraServer $(STAGING_INSTALL_PREFIX)/Ghidra/Features/
	@chmod -R 755 $(STAGING_INSTALL_PREFIX)/Ghidra/Features/GhidraServer 
