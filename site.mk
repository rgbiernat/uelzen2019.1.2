##	gluon site.mk makefile example

##	GLUON_SITE_PACKAGES
#		specify gluon/openwrt packages to include here
#		The gluon-mesh-batman-adv-* package must come first because of the dependency resolution


GLUON_FEATURES := \
	mesh-batman-adv-14 \
	respondd \
	autoupdater \
	config-mode-autoupdater \
	config-mode-contact-info \
	config-mode-core \
	config-mode-geo-location \
	config-mode-geo-location-osm \
	config-mode-hostname \
	config-mode-mesh-vpn \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	mesh-vpn-fastd \
	radvd \
	setup-mode \
	status-page \
	web-advanced \
	web-private-wifi \
	web-wizard

GLUON_SITE_PACKAGES := \
	-gluon-web-autoupdater \
	ffho-autoupdater-wifi-fallback \
	ffho-web-autoupdater \
	haveged \
	iptables \
	iwinfo \
	respondd-module-airtime

# Wenn FFHO-web-autoupdater weg ist, dann web-autoupdater einschalten!
#

##	DEFAULT_GLUON_RELEASE
#		version string to use for images
#		gluon relies on
#			opkg compare-versions "$1" '>>' "$2"
#		to decide if a version is newer or not.

DEFAULT_GLUON_RELEASE := uelzen-1.07


##	GLUON_RELEASE
#		call make with custom GLUON_RELEASE flag, to use your own release version scheme.
#		e.g.:
#			$ make images GLUON_RELEASE=23.42+5
#		would generate images named like this:
#			gluon-ff%site_code%-23.42+5-%router_model%.bin

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0

# Region code required for some images; supported values: us eu
GLUON_REGION ?= eu

# Languages to include
GLUON_LANGS ?= en de
