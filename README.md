# wasmsox

webassembly version of the sox (http://sox.sourceforge.net/)

## compile:

- install emsdk (see https://emscripten.org/docs/getting_started/downloads.html)
- make sure correct emsdk is activated: `source ../emsdk/emsdk_env.sh` line in `build.sh` and `install_deps.sh` (change path to ur install)
- install dependencies: `./install_deps.sh`
- build/compile `./build.sh`
- run test webpage `emrun --no_browser --port 8080 test.html` (don't 4get `source ../emsdk/emsdk_env.sh`)
- go to `http://localhost:8080/test.html`

## TODO

- don't just implement example -> implement the main function to have full access to all the sox features
- check which file types could be added (e.g. MP3s using lame)
- make NPM package out of this repo