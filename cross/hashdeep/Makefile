PKG_NAME = hashdeep
PKG_VERS = 4.4
PKG_EXT = tar.gz
PKG_DIST_NAME = v$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/jessek/hashdeep/archive/refs/tags/
# PKG_DIR = $(PKG_NAME)-$(PKG_VERS)
PKG_DIR = hashdeep-4.4

DEPENDS = 

HOMEPAGE = https://github.com/jessek/hashdeep
COMMENT  = This is md5deep, a set of cross-platform tools to compute hashes, or message digests, for any number of files while optionally recursively digging through the directory structure. It can also take a list of known hashes and display the filenames of input files whose hashes either do or do not match any of the known hashes. This version supports MD5, SHA-1, SHA-256, Tiger, and Whirlpool hashes.
LICENSE  = Public Domain, GPL

GNU_CONFIGURE = 1
CONFIGURE_TARGET = hashdeep_configure

include ../../mk/spksrc.cross-cc.mk

.PHONY: hashdeep_configure
hashdeep_configure:
	$(RUN) ./bootstrap.sh && ./configure
