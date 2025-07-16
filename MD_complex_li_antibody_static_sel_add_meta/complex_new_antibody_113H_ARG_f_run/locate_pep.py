fr=open('npt2.gro','r')


arr=fr.readlines()

container=[]
record=1000
for name in arr:
   if name[5:8] =='SOL' :
        #print name[5:8]
        record=2000

   if  record==1000:
         container.append(name[16:20])


print (container[-1].replace(" ",""))
