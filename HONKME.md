# Honk?

An engine for building goose-themed text adventure games for the C64.

Games are specified in yaml and transpiled to C64 BASIC.

# Goos-ing started

1. Clone this repo
2. Run `npm install` to fetch dependencies
3. Run `node zorkify.js` to compile yaml files into .bas files

# Emulation

1. Install [CMBPRG Studio](https://www.ajordison.co.uk/download.html) and [Vice](http://vice-emu.sourceforge.net/)
2. Open CMBPRG Studio
3. Go to Tools / Options / Project, pick a default directory - this is where you'll copy the compiled .bas files
4. Tools / Options / Emulator Control, set the path to `C:\...\c64\GTK3VICE-3.3-win32-r35872\x64.exe` or similar.
5. File / New BASIC project. Type `10 PRINT "honk"` in the window and press F5
6. A few second later you should receive a C64 emulation window containing the desired `HONK` output; if not, panic.

# Frequently Honked Questions

## Honk?
_Honk!_
