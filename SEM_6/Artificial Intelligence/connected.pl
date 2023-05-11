vertex(a).
vertex(b).
vertex(c).
vertex(d).
vertex(e).
vertex(f).
vertex(g).
vertex(h).
vertex(i).
vertex(j).

edge(b,a).
edge(c,b).
edge(d,c).
edge(f,d).
edge(f,g).
edge(h,g).
edge(a,h).
edge(a,c).
edge(a,e).
edge(g,e).
edge(e,d).
edge(e,f).
edge(i,j).

path(X,Y):- edge(X,Y).
path(X,Y):- edge(X,Z), edge(Z,Y).
path(X,Y):- path(X,Z), path(Z,Y).
path(X,Y):- edge(X,Z), path(Z,Y).
path(X,Y):- path(X,Z), edge(Z,Y).