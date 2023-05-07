------------------------------ MODULE BigTrace ------------------------------- 
EXTENDS Integers

VARIABLES 
    Field1,
    Field2,
    Field3,
    Field4,
    Field5,
    Field6,
    Field7,
    Field8,
    Field9

VARIABLE Counter

Init ==
    /\ Counter = 0
    /\ Field1 = [A \in 1..20 |-> Counter*1]
    /\ Field2 = [A \in 1..20 |-> Counter*2]
    /\ Field3 = [A \in 1..20 |-> Counter*3]
    /\ Field4 = [A \in 1..20 |-> Counter*4]
    /\ Field5 = [A \in 1..20 |-> Counter*5]
    /\ Field6 = [A \in 1..20 |-> Counter*6]
    /\ Field7 = [A \in 1..20 |-> Counter*7]
    /\ Field8 = [A \in 1..20 |-> Counter*8]
    /\ Field9 = [A \in 1..20 |-> Counter*9]

Next == 
    /\ Counter' = Counter + 1
    /\ Field1' = [A \in 1..20 |-> Counter'*1]
    /\ Field2' = [A \in 1..20 |-> Counter'*2]
    /\ Field3' = [A \in 1..20 |-> Counter'*3]
    /\ Field4' = [A \in 1..20 |-> Counter'*4]
    /\ Field5' = [A \in 1..20 |-> Counter'*5]
    /\ Field6' = [A \in 1..20 |-> Counter'*6]
    /\ Field7' = [A \in 1..20 |-> Counter'*7]
    /\ Field8' = [A \in 1..20 |-> Counter'*8]
    /\ Field9' = [A \in 1..20 |-> Counter'*9]

Inv == Counter # 500

=============================================================================
