#!/bin/bash

rm -f jpn_indices.csv
rm -f links.csv
rm -f sentences.csv

wget https://downloads.tatoeba.org/exports/sentences.tar.bz2
wget https://downloads.tatoeba.org/exports/links.tar.bz2
wget https://downloads.tatoeba.org/exports/jpn_indices.tar.bz2

tar -xvf sentences.tar.bz2
tar -xvf links.tar.bz2
tar -xvf jpn_indices.tar.bz2

rm -f jpn_indices.tar.bz2
rm -f links.tar.bz2
rm -f sentences.tar.bz2

rm -rf splited/*

split -l 50000 jpn_indices.csv splited/jpn_indices_
split -l 50000 links.csv splited/links_
split -l 50000 sentences.csv splited/sentences_
