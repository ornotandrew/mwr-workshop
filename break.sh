echo "Generating Masks"
python preprocess_mask.py masks.masks > processed_masks.masks
python compile_masks.py $MPPATH processed_masks.masks rules.rules
cat random_matched_rules.rule >> rules.rules
$CATPATH -m 0 -r rules.rules -o cracked.txt -g 10000 hashes.hash 500-worst-passwords.txt
