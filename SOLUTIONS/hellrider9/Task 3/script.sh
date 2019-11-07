#!/bin/bash
INPUT=/root/final.txt             #Address to the input file
while IFS= read -r -n1 char       #using while loop to read from the file || -n1 specifies that read a single character at a time
do
        echo "$char" | md5sum >> decrypt_it  #here character read from file is being converted to md5 encoded string using md5 command and then
                                             #being appended to decrypt_it file
done < "$INPUT"   # "done" marks the end of while loop
