#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

COMMENT=\#*

sudo -v

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Brewfile contents https://github.com/Homebrew/homebrew-bundle
brew bundle

find * -name "*.list" | while read fn; do
    cmd="${fn%.*}"
    while read package; do
        if [[ $package == $COMMENT ]];
        then continue
        fi
        if [[ $cmd == code* ]]; then
            echo "$cmd $package"
            $cmd $package
        elif [[ $cmd == yarn* ]]; then
            echo "$cmd add $package"
            $cmd add $package
        else
            echo "$cmd install $package"
            $cmd install $package
        fi
    done < "$fn"
done
