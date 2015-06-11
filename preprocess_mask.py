import sys

def preprocess(path):
	with open(path) as f:
		original_mask = f.read().split("\n");
	
	general_masks = []
	other_masks = []

	in_general_block = False
	for line in original_mask:
		if line.startswith("# GENERAL"):
			in_general_block = True
			continue
		elif not line or line[0]=="#":
			in_general_block = False
			continue
		if in_general_block:
			general_masks.append(line)
		else:
			other_masks.append(line)
	
	final_masks = general_masks+other_masks

	for g in general_masks:
		for o in other_masks:
			final_masks.append(g+o)
			# final_masks.append(o+g)
	
	return final_masks

if __name__=="__main__":
	raw_masks = preprocess(sys.argv[1])
	print "\n".join(raw_masks)

