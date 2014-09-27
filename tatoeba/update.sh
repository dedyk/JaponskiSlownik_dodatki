#!/bin/bash

wget http://downloads.tatoeba.org/exports/sentences.tar.bz2
wget http://downloads.tatoeba.org/exports/links.tar.bz2
wget http://downloads.tatoeba.org/exports/jpn_indices.tar.bz2

rm -f jpn_indices.csv
rm -f links.csv
rm -f sentences.csv

tar -xvf sentences.tar.bz2
tar -xvf links.tar.bz2
tar -xvf jpn_indices.tar.bz2

rm -f jpn_indices.csv.7z
rm -f links.csv.7z
rm -f sentences.csv.7z

7z a -mx=9 sentences.csv.7z sentences.csv
7z a -mx=9 links.csv.7z links.csv
7z a -mx=9 jpn_indices.csv.7z jpn_indices.csv

rm -f jpn_indices.tar.bz2
rm -f links.tar.bz2
rm -f sentences.tar.bz2
