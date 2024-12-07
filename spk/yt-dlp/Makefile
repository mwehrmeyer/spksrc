SPK_NAME = yt-dlp
SPK_VERS = 1.0
SPK_REV = 1
# SPK_ICON = src/beets.png

PYTHON_PACKAGE = python311
SPK_DEPENDS = "python311>=3.11"
SPK_DEPENDS = "ffmpeg6>=6.0"
UNSUPPORTED_ARCHS = $(OLD_PPC_ARCHS) $(ARMv5_ARCHS)

WHEELS = src/requirements-pure.txt


MAINTAINER = This fucking guy
DESCRIPTION = "yt-dlp is a feature-rich command-line audio/video downloader with support for thousands of sites. The project is a fork of youtube-dl based on the now inactive youtube-dlc."
DISPLAY_NAME = yt-dlp

CHANGELOG = "1. Migrate to python 3.11<br/>2. Update to all wheels<br/>3. Mark ARMv5 as unsupported"

HOMEPAGE = https://github.com/yt-dlp/yt-dlp
LICENSE  = Unlicense

SERVICE_SETUP = src/service-setup.sh

STARTABLE = no

SPK_COMMANDS = env/bin/yt-dlp
SPK_USR_LOCAL_LINKS = bin:env/bin/yt-dlp

include ../../mk/spksrc.python.mk
