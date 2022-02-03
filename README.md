# RED DOT

Simulate a laser pointer using the cursor in Linux.

## Advantages over laser pointer applications

When recording application windows, simulated mouse pointers do not get recorded. Using a real mouse pointer fixes this issue.

## Installation from source

### Build dependencies
- build essentials (GNU make, etc.)
- inkscape (for converting svgs to pngs)
- xcursorgen (for generating the cursors)

### Installation

```bash
git clone https://github.com/mridhas/reddot
make build
sudo make install
```
(Make sure to run the build target and as non-root user, since inkscape may fail else.)

Enable the cursor from the DE's settings. That's it.

## Potential issues
If the mouse pointer doesn't work in some application a possible fix is to replace more of the predefined cursors with the red dot. Currently only `arrow` and `left_ptr` are replaced. If you need help post an issue or take a look at [this gist](https://gist.github.com/sole/571812).
