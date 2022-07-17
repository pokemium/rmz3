## Installation

Run the following commands (first, see [this](#macos) if you are on **macOS** or [this](#old-windows) if you are on **old Windows**):

	git clone https://github.com/pokemium/rmz3
	git clone https://github.com/luckytyphlosion/agbcc -b new_layout_with_libs

	cd agbcc
	make
	make install prefix=../rmz3

	cd ../rmz3

	cd tools/gbagfx
	make

Build rmz3 assets initially (and after each `make clean`):

	make assets

To build **rmz3.gba**:

	make -j$(nproc)

## macOS

Run `xcode-select --install` in Terminal, then proceed by executing the commands.


## Old Windows

*For Windows 8.1 and earlier*

Download and run the [Cygwin](https://www.cygwin.com/install.html) setup, leaving the default settings intact. At "Select Packages", set the view to "Full" and choose to install the following:

- `make`
- `git`
- `gcc-core`
- `gcc-g++`
- `libpng-devel`

Additionally, there are extra optional tools which require installing the following packages, although they are not necessary to build:

- `python-3`

In the Cygwin command prompt, enter the commands.

If the command for building rmz3.gba does not work, run `nproc` and use that value instead of `$(nproc)` for `make`.


## Windows 10

Install the [Windows Subsystem for Linux](https://docs.microsoft.com/windows/wsl/install-win10), and run the commands.

