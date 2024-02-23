# Lecture 5 of [[ENSC 180]]

## Basics
- ### Tables
	- to make a table 
		- ```T=table(x,y,z);```
			- you must define the variables (matrix/list)
	- [[Dot Indexing]]

## The addition Principle
- #### (AP) or rule of sum
	- ###### let say we have events A and B, they are independent
		- example: we can choose either to watch a movie with 3 options for that movie or we can go eat food with 4 options for the food place
			- so the *total* number of options is just $|A|\cup|B|=|A|+|B|$
	- ###### so we can say that 
		- $\bigcup_{i=1}^{k}A_{i}=\sum^{k}_{i=1}|A_{i}|$

## The Multiplication Principle
- #### (MP) 
	- ###### lets say we have events A and B, and they are *consecutive*
		- example: we can watch a movie A (3 options) ***and*** go out to eat B (4 options) 
			- so the ***total*** number of possibilities are $A*B$
	- ###### We can write this as
		- $\prod_{i=1}^{r}n_{i}$

## Permutations
- #### Different orders
	- ###### K orders, N events
		- $P^{N}_{K}$
	- ###### How to use permutations in matlab
		- [[Anonymous Function]] is used a lot here
		- `P=@(n,k)factorial(n)/factorial(n-k);`
			- then we can input values of n,k
				- this code is ***BAD*** it over flows and doesn't give outputs because of the nature of factorials
		- `P=@(n,k)prod([n-k+1:n]);`
			- im going to be honest i have no idea how this works
	- ###### Built in permutation function
		- `x=[a,b,c]` 
			- `>>perms(x)`
		- `randperm`
			- gives vector counting until n randomly 
