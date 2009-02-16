#! /bin/bash
# printrecord.sh
# Diagnostic program to display marc records.
# $Id: printrecord.sh 

E_BADARGS=65

if [ $# -eq 0 ]
then
  echo "    Usage: `basename $0` ./path/to/marc.mrc id_to_extract"
  echo "    Usage: `basename $0` ./path/to/marc.mrc first_id_to_extract  last_id_to_extract"
  exit $E_BADARGS
fi

java @MEM_ARGS@ -Done-jar.main.class="org.solrmarc.marc.RawRecordReader" -jar @CUSTOM_JAR_NAME@ $1 $2 $3

exit 0
