A=c(1,1,1,2,2,2,3,3,3,3,3,3);
C=c();
temp_result=c();
count=1;
for (i in 1:5000){
  B=sort(sample(A, 8, replace = FALSE, prob = NULL));
  #print(B);
  #print("i=")
  #print(i)
  
  for (j in 1:count-1){
    #print("j=")
    #print(j)
    temp_result[j]=all(B==C[j,]);
  }
  if (all(temp_result!=TRUE)){
    count=count+1;
    #C=matrix(c(C,sort(B)),nrow=count-1,byrow=T);
    C=rbind(C,B);
  }
}

print(dim(C)[1]);
# will have possibility to fail. 
# based on Monte Carlo method 



