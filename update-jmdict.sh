wget http://ftp.edrdg.org/pub/Nihongo/JMdict.gz

gzip -f -d JMdict.gz

wget http://ftp.edrdg.org/pub/Nihongo/JMdict_e.gz

gzip -f -d JMdict_e.gz

wget http://ftp.edrdg.org/pub/Nihongo/edict_sub.gz

gzip -f -d edict_sub.gz

iconv -f euc-jp -t utf-8 < edict_sub > edict_sub-utf8

rm edict_sub
