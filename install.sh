#!/bin/bash
set -euo pipefail

CMD="${1:-}"

do_init() {
    echo "init"
	rsync -a .vimrc ~/
	rsync -a .screenrc ~/
	rsync -a .claude/ ~/.claude/
	rsync -a .config/ ~/.config/
	rsync -a Documents/ ~/Documents/
}

do_update() {
    echo "update"
	rsync -au ~/.vimrc .vimrc
	rsync -au ~/.screenrc .screenrc 
	rsync -au --existing ~/.claude/ .claude/
	rsync -au --existing ~/.config/ .config/
	rsync -au --existing ~/Documents/ Documents/
}

case "$CMD" in
    init)   do_init ;;
    update) do_update ;;
    *)      echo "Usage: $0 {init|update}" >&2; exit 1 ;;
esac

