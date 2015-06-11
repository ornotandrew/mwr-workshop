echo "Generating Masks"
python preprocess_mask.py masks.masks > processed_masks.masks
python compile_masks.py $MPPATH processed_masks.masks rules.rules
$CATPATH -m 0 -r rules.rules -o cracked.txt hashes.hash 500-worst-passwords.txt
