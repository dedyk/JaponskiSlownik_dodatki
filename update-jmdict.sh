wget http://ftp.monash.edu.au/pub/nihongo/JMdict_e.gz

gzip -d JMdict_e.gz

wget http://ftp.monash.edu.au/pub/nihongo/edict_sub.gz

gzip -d edict_sub.gz

iconv -f euc-jp -t utf-8 < edict_sub > edict_sub-utf8

rm edict_sub
