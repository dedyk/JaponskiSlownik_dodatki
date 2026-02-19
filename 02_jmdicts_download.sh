#!/bin/bash

cd jmdicts_updater

./update-jmdict.sh
./update-jmnedict.sh
./update-kanji.sh

dir -1l
