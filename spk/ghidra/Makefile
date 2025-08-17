SPK_NAME = ghidraServer
SPK_VERS = 1.0
SPK_REV = 1
SPK_ICON = src/ghidra.png

DEPENDS = cross/ghidra
SPK_DEPENDS = "java-21-openjdk"

MAINTAINER = This fucking guy
DISPLAY_NAME = Ghidra Server
HOMEPAGE = https://ghidra-sre.org/
DESCRIPTION = Ghidra is a software reverse engineering (SRE) framework created and maintained by the National Security Agency Research Directorate. This framework includes a suite of full-featured, high-end software analysis tools that enable users to analyze compiled code on a variety of platforms including Windows, macOS, and Linux. Capabilities include disassembly, assembly, decompilation, graphing, and scripting, along with hundreds of other features. Ghidra supports a wide variety of processor instruction sets and executable formats and can be run in both user-interactive and automated modes. Users may also develop their own Ghidra extension components and/or scripts using Java or Python.
CHANGELOG = "Initial Version"
LICENSE = Apache 2.0

WIZARDS_DIR = src/wizard/

SERVICE_USER = auto
SERVICE_PORT = 13100
STARTABLE  = yes
SERVICE_SETUP = src/service-setup.sh

SERVICE_WIZARD_SHARENAME = ghidra_repositories_share

POST_STRIP_TARGET = ghidra_extra_install
.PHONY: ghidra_extra_install

include ../../mk/spksrc.spk.mk

ghidra_extra_install:
	@install -m 644 ./src/server.conf $(STAGING_DIR)/server/server.conf
