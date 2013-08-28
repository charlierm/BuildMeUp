BuildMeUp
=========

Command line tool for playing "Build Me Up Buttercup". Most useful when run as an XCode build phase.


Installation
-------------

```bash
git clone git@github.com:charlierm/BuildMeUp.git
cd BuildMeUp
xcodebuild -project BuildMeUp.xcodeproj
```

Then this as a build phase to xcode:

```bash
cd PATH_TO_BINARY
nohup ./BuildMeUp > /dev/null 2>&1 &
```

Finally you'll need to include "buttercup.mp3" in your documents folder.
```bash
~/Documents/buttercup.mp3
```
