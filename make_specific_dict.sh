wget http://s3.amazonaws.com/wikia_xml_dumps/b/ba/battlefieldheroes_pages_current.xml.gz
gzip -d battlefieldheroes_pages_current.xml.gz
python parser.py
