shopt -s nullglob
# !/bin/bash
txt_files=$(ls *.txt)
c_files=(*.c)
if [[ ${#txt_files[@]} -gt 0 || ${#c_files[@]} -gt 0 ]]; then
	ls *.txt *.c 2>/dev/null
else
	echo "Creating dummy files"
	touch file1.txt file2.txt file1.c file2.c
	echo "created:"
	ls *.txt *.c
fi

