#!/bin/bash

installEclipseAddons() {
  local eclipse_location=$(ls "$1"/plugins/org.eclipse.equinox.launcher_*)
  java -jar "$eclipse_location" -nosplash -application org.eclipse.equinox.p2.director \
    -metadataRepository "$2" \
    -artifactRepository "$2" \
    -destination        "$1" \
    -installIU          "$3"
}

installEclipseAddons "$1" \
  "http://download.eclipse.org/releases/kepler, \
   http://vrapper.sourceforge.net/update-site/stable, \
   http://dist.springsource.com/release/TOOLS/update/e4.3, \
   http://download.sigasi.com/update/mousefeed, \
   http://moreunit.sourceforge.net/update-site, \
   http://infinitest.github.com, \
   http://eclipse.greenpath.pl, \
   http://update.eclemma.org" \
  "org.eclipse.jdt, \
   org.eclipse.jgit.feature.group, \
   org.eclipse.egit.feature.group, \
   org.eclipse.m2e.feature.feature.group, \
   net.sourceforge.vrapper.feature.group, \
   net.sourceforge.vrapper.eclipse.jdt.feature.feature.group, \
   net.sourceforge.vrapper.plugin.splitEditor.feature.group, \
   net.sourceforge.vrapper.plugin.surround.feature.group, \
   net.sourceforge.vrapper.plugin.argtextobj.feature.group, \
   net.sourceforge.vrapper.plugin.ipmotion.feature.group, \
   org.springsource.ide.eclipse.commons.quicksearch.feature.feature.group, \
   com.mousefeed.feature.feature.group, \
   org.moreunit.feature.group, \
   org.moreunit.light.feature.group, \
   org.moreunit.mock.feature.group, \
   org.infinitest.eclipse.feature.feature.group, \
   pl.greenpath.eclipse.refactoring.feature.feature.group, \
   com.mountainminds.eclemma.feature.feature.group"
