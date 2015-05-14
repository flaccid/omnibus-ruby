#
# Copyright 2015 YOUR NAME
#
# All Rights Reserved.
#

RUBY_VERSION = '2.1.6'

name 'ruby'
# version RUBY_VERSION
maintainer 'Chris Fordham'
homepage 'https://github.com/flaccid/omnibus-ruby'

# Defaults to C:/ruby on Windows
# and /opt/ruby on all other platforms
install_dir "#{default_root}/#{name}"

build_version RUBY_VERSION
# build_version Omnibus::BuildVersion.semver
build_iteration 1

# Creates required build directories
dependency 'preparation'

# Version manifest file
dependency 'version-manifest'

exclude '**/.git'
exclude '**/bundler/git'

dependency 'ruby'

override :ruby, version: RUBY_VERSION
