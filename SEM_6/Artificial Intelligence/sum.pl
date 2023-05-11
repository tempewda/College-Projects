sum(1, S):- S is 1.
sum(N, S):- N1 is N-1, sum(N1, S1), S is N + S1.