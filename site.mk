GLUON_SITE_PACKAGES := \
	gluon-mesh-babel \
	gluon-l3roamd \
	gluon-radvd \
	gluon-respondd \
	gluon-autoupdater \
	gluon-setup-mode \
	gluon-client-bridge \
	gluon-config-mode-core \
	gluon-config-mode-autoupdater \
	gluon-config-mode-hostname \
	gluon-config-mode-geo-location \
	gluon-config-mode-contact-info \
	gluon-config-mode-mesh-vpn \
	gluon-web-admin \
	gluon-web-autoupdater \
	gluon-web-wifi-config \
	gluon-web-network \
	gluon-status-page \
	gluon-iptables-clamp-mss-to-pmtu \
	ffffm-banner \
	ffffm-keep-radio-channel \
	babeldev \
	haveged \
	iwinfo \
	prefixd \
	gluon-web-prefixd \
	gluon-mesh-vpn-wireguard

#	nodealert \  # breaks respondd response from yanic?
#       kmod-nat46 \
#	ddhcpd \
#	gluon-ddhcpd \
#	respondd-module-airtime \
#	gluon-xlat464-clat    # route back from jool to clients does not exist,	(ipv4)-tcp connections break with this package when roaming

#	ffffm-autoupdater-use-site-conf-branch \

include $(GLUON_SITEDIR)/specific_site.mk 


ifeq ($(GLUON_TARGET),x86-64)
GLUON_DEBUG := 1
endif

#####################################################################################################################

# This is the Dev branch

# Gluon Base Release
DEFAULT_GLUON_RELEASE := vHomebrew-babel-dev

# For homebrew development add e.g. date and time 
# (Note: Don't use the ':' char. It will break the build)
DEFAULT_GLUON_RELEASE := $(DEFAULT_GLUON_RELEASE)-$(shell date '+%Y.%m.%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Development branch information
GLUON_BRANCH ?= experimental_babel

# Default priority for updates.
# GLUON_PRIORITY ?= 0

# Languages to include
GLUON_LANGS ?= en de

# region information for regulatory compliance
GLUON_REGION ?= eu

# Prefer ath10k firmware with 802.11s support
GLUON_WLAN_MESH ?= 11s

# Multidomain support
GLUON_MULTIDOMAIN=1
