PREFIX = /usr/share

# If you get errors while building, try to build as normal user. Inkscape fails for some reason on root builds.
build: build/cursors/arrow build/cursors/left_ptr

install: build index.theme
	mkdir -p $(PREFIX)/icons/reddot
	cp index.theme $(PREFIX)/icons/reddot
	cp -r build/cursors $(PREFIX)/icons/reddot

uninstall:
	rm -r $(PREFIX)/icons/reddot

clean:
	rm -r build

build/arrow%.png: arrow.svg
	mkdir -p build
	inkscape -w "$(*)" -h "$(*)" arrow.svg -o "build/arrow$(*).png"

build/cursors/arrow: arrow.cursor build/arrow24.png build/arrow32.png build/arrow48.png build/arrow64.png
	mkdir -p build/cursors
	xcursorgen arrow.cursor build/cursors/arrow

build/cursors/left_ptr: build/cursors/arrow
	cp build/cursors/arrow build/cursors/left_ptr
