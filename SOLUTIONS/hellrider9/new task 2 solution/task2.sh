#!/bin/bash
crunch 8 8 -p "f1r3" "h4wk" "pr0" "n00b" "r3b00t" "fl4shir" "p4r4" "d0x" > list.txt
# here crunch command is used which creates a wordlist. two 8 written after crunch signify that minimum and maximum value of 
# wordlist to be generated should be 8 respectively. -p checks that permutations are created without repetitions
