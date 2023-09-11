# Camunda Modeler

The binaries for this are now coming from GitHub release artifacts instead of the Camunda download page.

## Licenses and Ownership

All product names, logos, brands, trademarks and registered trademarks are property of their respective owners. The use of the Camunda modeler icon and logo are to support the hosting of the the package and do not imply ownership or endorsement. I'm using the icon in this repo to satisfy the CDN requirement for chocolatey; no ownership on my part is implied or expressed.

## Where is the Binary?

This installs the Camunda Modeler into the `C:\ProgramData\chocolatey\lib\camunda-modeler` folder.

E.g., my executable is here: `"C:\ProgramData\chocolatey\lib\camunda-modeler\tools\Camunda Modeler.exe"`. From this I make a shortcut to my desktop.

## Install Problems

Camunda has made an exception to this install, given the known TLS problems. So pushing to Chocolatey has gone smoothly with this and other older binaries.
