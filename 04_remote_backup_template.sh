#!/bin/bash

BACKUP_DIR=jmdict_backup_`date +%Y_%m_%d_%H_%M_%S`

rsync -z -v -axH -D --delete --progress --partial -x -E -o -g -A -e "ssh -C" edict_sub-utf8 JMdict JMdict_e JMdict_e_NG JMnedict.xml JMnedict.xml.bz2 kanjidic2.xml kradfile radkfile login@host:remotepath/j-backup/$BACKUP_DIR
