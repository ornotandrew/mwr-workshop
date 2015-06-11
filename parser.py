import xml.etree.ElementTree as ET
import re
PAGE = "{http://www.mediawiki.org/xml/export-0.6/}page"

tree = ET.parse('battlefieldheroes_pages_current.xml')
root = tree.getroot()
word_list = set()
for child in root:
    if child.tag == PAGE:
        rev = child.find('{http://www.mediawiki.org/xml/export-0.6/}revision')
        textnode = rev.find('{http://www.mediawiki.org/xml/export-0.6/}text')
        if textnode.text:
            texts = [re.sub(r'\W+',"",x.strip()) for x in textnode.text.split(" ")]
            word_list.update(texts)

with open("xml_wordlist.txt","w") as f:
    for word in word_list:
        f.write(word + "\n")
