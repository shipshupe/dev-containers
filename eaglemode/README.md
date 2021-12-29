# Eagle Mode
Eagle Mode http://eaglemode.sourceforge.net/

Dockerfile installs prereqs and builds a fresh copy of Eagle Mode, a fascinating ZUI program. 

Running in a container environment is a quick way to sandbox the app while poking around.

After attaching to container via Remote-Container (see project README) the terminal command `eaglemode` should pass GUI back up to host system.

First defaults I usually change (YMMV):

- Zoom into upper left and mark Pan / Alt key options
- Disable magnetism
- Change aspect to 4:3 and theme to Simple or Night

TODO: Populate ~/.eaglemode with default and command modifications