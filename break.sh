echo "Generating Masks"
python compile_masks.py $MPPATH masks.masks rules.rules
$CATPATH -m 0 -r rules.rules hashes.hash 500-worst-passwords.txt
