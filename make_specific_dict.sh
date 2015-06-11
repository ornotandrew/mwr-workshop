wget http://s3.amazonaws.com/wikia_xml_dumps/b/ba/battlefieldheroes_pages_current.xml.gz
gzip -d battlefieldheroes_pages_current.xml.gz
wget http://downloads.skullsecurity.org/passwords/rockyou.txt.bz2
gzip -d rockyou.txt.bz2
wget http://downloads.skullsecurity.org/passwords/cain.txt.bz2
gzip -d cain.txt.bz2
python parser.py
