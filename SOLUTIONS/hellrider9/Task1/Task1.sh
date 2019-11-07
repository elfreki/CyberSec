#!/bin/bash
echo "#!/bin/bash">>file.txt
echo -n ": " >>file.txt      # : is the shell equivalent of a "NOP" (no op, a do-nothing operation).so nothing after that is interpreted
echo -n "'" >>file.txt           
crunch 54 54 mnopq -t "I am also aflag : ACTF{@@@@@@} You guys are awesome :)" >> file.txt     #crunch command is used to generate wordlists
echo "'">>file.txt    # closed NOP
echo "echo -n -e 'Hello \t'">>file.txt              # CODE THAT WILL BE EXECUTED WHEN THE SH FILE IS EXECUTED
echo " whoami " >>file.txt
echo "echo ACTF{I g0t th3 f74g}">> file.txt
echo -n ": ">>file.txt         # Again NOP Starts
echo -n "'">>file.txt
crunch 54 54 qmnop -t "I am also aflag : ACTF{@@@@@@} You guys are awesome :)" >>file.txt
crunch 54 54 qmnop -t "I am also flag : ACTF{@@@@@@@} You guys are awesome :)" -b 2mb >>file.txt
echo "'">>file.txt
mv file.txt welcome.sh  # renaming the created text file into a bash script file
chmod +x welcome.sh     #changing permission to allow permission to execute the created file
