#!bin/bash
# Copyright (C) 2020 - 2022 Muhammad Fadlyas (fadlyas07)
# SPDX-License-Identifier: GPL-3.0-or-later

git pull
case "$1" in
    ccache)
        git commit --allow-empty -am "Auto Push: collect ccache"
        git push
    ;;
    los)
        git commit --allow-empty -am "Auto Push: do build"
        git push
    ;;
    *)
        echo "Nothing to do! Are you serious mate?"
    ;;
esac
