#!/bin/bash
for i in {0..5}; do
	for j in {0..5}; do
		for k in {0..5}; do
			for l in {0..5}; do
				for m in {0..5}; do
					for n in {0..5}; do
						echo "$i $j $k $l $m $n"
						a=`echo "$i $j $k $l $m $n" | ./bomb solutions.txt`
						if [ "$a" != "Welcome to my fiendish little bomb. You have 6 phases with\nwhich to blow yourself up. Have a nice day!\nPhase 1 defused. How about the next one?\nThat's number 2.  Keep going!\nHalfway there!\nSo you got that one.  Try this one.\nGood work!  On to the next...\n\nBOOM\!\!\!\nThe bomb has blown up." ]; then
							echo "$a"
							exit 0
						fi
					done
				done
			done
		done
	done
done
