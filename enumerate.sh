echo $1 $2 | awk '{split($1,A,".");split($2,B,".");num=A[2];till_num=B[2];for(;num<=till_num;num++){num2=A[3];till_num2=B[3];for(;num2<=till_num2;num2++){num3=A[4];till_num3=B[4];for(;num3<=till_num3;num3++){print A[1]"."num"."num2"."num3}}}'}""