wget http://ftp.edrdg.org/pub/Nihongo/JMnedict.xml.gz

gzip -f -d JMnedict.xml.gz
bzip2 -f -9 -k -f JMnedict.xml

wget http://ftp.edrdg.org/pub/Nihongo/JMnedict_NG.xml.gz

gzip -f -d JMnedict_NG.xml.gz
bzip2 -f -9 -k -f JMnedict_NG.xml
