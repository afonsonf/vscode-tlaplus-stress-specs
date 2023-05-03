------------------------------ MODULE BigState ------------------------------- 
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
    /\ Field1 = [A \in 1..Counter |-> 1]
    /\ Field2 = [A \in 1..Counter |-> 2]
    /\ Field3 = [A \in 1..Counter |-> 3]
    /\ Field4 = [A \in 1..Counter |-> 4]
    /\ Field5 = [A \in 1..Counter |-> 5]
    /\ Field6 = [A \in 1..Counter |-> 6]
    /\ Field7 = [A \in 1..Counter |-> 7]
    /\ Field8 = [A \in 1..Counter |-> 8]
    /\ Field9 = [A \in 1..Counter |-> 9]

Next == 
    /\ Counter' = Counter + 1
    /\ Field1' = [A \in 1..Counter'*10 |-> 1]
    /\ Field2' = [A \in 1..Counter'*10 |-> 2]
    /\ Field3' = [A \in 1..Counter'*10 |-> 3]
    /\ Field4' = [A \in 1..Counter'*10 |-> 4]
    /\ Field5' = [A \in 1..Counter'*10 |-> 5]
    /\ Field6' = [A \in 1..Counter'*10 |-> 6]
    /\ Field7' = [A \in 1..Counter'*10 |-> 7]
    /\ Field8' = [A \in 1..Counter'*10 |-> 8]
    /\ Field9' = [A \in 1..Counter'*10 |-> 9]

Inv == Counter # 40

=============================================================================
