Canvas LMS
======

Canvas is a new, open-source LMS by Instructure Inc. It is released under the
AGPLv3 license for use by anyone interested in learning more about or using
learning management systems.

[Please see our main wiki page for more information](http://github.com/instructure/canvas-lms/wiki)

Installation
=======

Detailed instructions for installation and configuration of Canvas are provided
on our wiki.

 * [Quick Start](http://github.com/instructure/canvas-lms/wiki/Quick-Start)
 * [Production Start](http://github.com/instructure/canvas-lms/wiki/Production-Start)
 * 
 * 
 * 
 * Got an error:
 * 
* Gem::Installer::ExtensionBuildError: ERROR: Failed to build gem native extension.

        /usr/bin/ruby1.8 extconf.rb 
checking for curl/curl.h in /opt/local/include,/opt/local/include/curl,/usr/include/curl,/usr/include,/usr/include/curl,/usr/local/include/curl... no
need libcurl
*** extconf.rb failed ***
Could not create Makefile due to some reason, probably lack of
necessary libraries and/or headers.  Check the mkmf.log file for more
details.  You may need configuration options.

 * 
 * Solution:
 * 
 * sudo apt-get install curl  
 * sudo apt-get install libcurl3 libcurl3-dev
 * sudo gem install typhoeus 
