wget http://www.edrdg.org/kanjidic/kanjidic2.xml.gz
gzip -d kanjidic2.xml.gz
cat kanjidic2.xml | grep -v "<\!\-\- Entry for Kanji:" > kanjidic2.xml-temp
mv kanjidic2.xml-temp kanjidic2.xml

#

wget ftp://ftp.monash.edu/pub/nihongo/radkfile.gz
gzip -d radkfile.gz
iconv -f euc-jp -t utf-8 < radkfile > radkfile-utf8
mv radkfile-utf8 radkfile

#

wget ftp://ftp.monash.edu/pub/nihongo/kradfile.gz
gzip -d kradfile.gz
iconv -f euc-jp -t utf-8 < kradfile > kradfile-utf8
mv kradfile-utf8 kradfile
