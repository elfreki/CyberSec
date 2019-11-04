def permute(a, l, r): 
    f=open("text.txt","a+")
    if l==r: 
        for i in a:
          f.write(i)
        f.write("\n")  
    else: 
        for i in range(l,r+1): 
            a[l], a[i] = a[i], a[l] 
            permute(a, l+1, r) 
            a[l], a[i] = a[i], a[l] 
strings=["pr0","n00b","f1r3","h4wk","fl4sh1r","r3b00t","p4r4","d0x"]
permute(strings, 0, 7) 
  
