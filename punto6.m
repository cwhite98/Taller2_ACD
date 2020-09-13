A = [2 4 5 
     6 9 8 
     4.1 5 3]
b = [220 
     490 
     274]

[L U P] = lu(A)

AN = P*A
bN = P*b
[LN UN PN] = lu(AN)

y = LN\bN
x = UN\y