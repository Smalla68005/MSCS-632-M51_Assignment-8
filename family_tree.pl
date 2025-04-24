% family_tree.pl

% Basic Facts
parent(john, mary).
parent(john, mike).
parent(susan, mary).
parent(susan, mike).
parent(mary, alice).
parent(mary, bob).
parent(mike, charlie).
parent(lisa, charlie).

male(john).
male(mike).
male(bob).
male(charlie).

female(susan).
female(mary).
female(lisa).
female(alice).

% Rules
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.
cousin(X, Y) :- parent(P1, X), parent(P2, Y), sibling(P1, P2), X \= Y.
child(X, Y) :- parent(Y, X).
descendant(X, Y) :- parent(Y, X).
descendant(X, Y) :- parent(Y, Z), descendant(X, Z).
