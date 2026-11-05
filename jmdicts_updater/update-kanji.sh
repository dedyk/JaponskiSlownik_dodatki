wget http://ftp.edrdg.org/pub/Nihongo/kanjidic2.xml.gz
gzip -f -d kanjidic2.xml.gz
cat kanjidic2.xml | grep -v "<\!\-\- Entry for Kanji:" > kanjidic2.xml-temp
mv kanjidic2.xml-temp kanjidic2.xml

cat kanjidic2.xml | egrep -v "^</kanjidic2>$" > kanjidic2.xml.temp
cat kanjidic2.xml.temp kanjidic2_additional.xml > kanjidic2.xml.temp2
rm kanjidic2.xml.temp
echo "</kanjidic2>" >> kanjidic2.xml.temp2
mv kanjidic2.xml.temp2 kanjidic2.xml

#

wget http://ftp.edrdg.org/pub/Nihongo/kanjidic2_NG.xml.gz
gzip -f -d kanjidic2_NG.xml.gz
cat kanjidic2_NG.xml | grep -v "<\!\-\- Entry for Kanji:" > kanjidic2_NG.xml-temp
mv kanjidic2_NG.xml-temp kanjidic2_NG.xml

cat kanjidic2_NG.xml | egrep -v "^</kanjidic2>$" > kanjidic2_NG.xml.temp
cat kanjidic2_NG.xml.temp kanjidic2_additional.xml > kanjidic2_NG.xml.temp2
rm kanjidic2_NG.xml.temp
echo "</kanjidic2>" >> kanjidic2_NG.xml.temp2
mv kanjidic2_NG.xml.temp2 kanjidic2_NG.xml

#

wget http://ftp.edrdg.org/pub/Nihongo/radkfile.gz
gzip -f -d radkfile.gz
iconv -f euc-jp -t utf-8 < radkfile > radkfile-utf8
mv radkfile-utf8 radkfile

#

wget http://ftp.edrdg.org/pub/Nihongo/kradfile.gz
gzip -f -d kradfile.gz
iconv -f euc-jp -t utf-8 < kradfile > kradfile-utf8
mv kradfile-utf8 kradfile
