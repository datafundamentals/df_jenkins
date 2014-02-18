# df_jenkins cookbook
this cookbook was written for the sole purpose of installing jenkins as a continuous integration tool onto a dedicated box and make sure it is running
# Requirements
this requires Java to be installed prior to the installation of jenkins and to have a working internet connection for the system. I think there will be a lot more to this one before you know it.
# Usage

# Attributes

* default['jenkins']['url']: the location of the RPM. This is intentionally left open for the source so as to allow either a URL address for download or a local file installation (which is the preferred method.)

# Recipes

* default: Designed to pull it from the local installation folder and ensure that everything is running properly.

# Author

Author:: Jeff Carapetyan (<YOUR_EMAIL>)
