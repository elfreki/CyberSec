def permute(a, l, r):             #function to permutate the given words
    f=open("text.txt","a+")       #opening a file stream to write data to
    if l==r: 
        for i in a:
          f.write(i)              #writing output onto the file
        f.write("\n")  
    else: 
        for i in range(l,r+1):                 #iterating over the array
            a[l], a[i] = a[i], a[l]            #swapping elements
            permute(a, l+1, r)                 # recursion is being used 
            a[l], a[i] = a[i], a[l]            #swapping again to revert the changes
strings=["pr0","n00b","f1r3","h4wk","fl4sh1r","r3b00t","p4r4","d0x"]            #array of strings which will be permutated 
permute(strings, 0, 7)           #calling the function permute to begin the algorithm
  
