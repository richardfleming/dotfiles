#!/usr/bin/env bash

for d in `ls .`;
do
    ( stow -D $d )
done
