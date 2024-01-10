
# 3Blue1Brown notes for [[Math 232]]

## Span of the coordinates
- ### The hats
	- ##### we can think of the x and y axis as these scalars $\hat{i}$ and $\hat{j}$ 
		- it is like the complex plane (WOW)
			- ###### IE: 
$$
\begin{matrix}
3 \\
-2
\end{matrix}
= (3)\hat{i}+(-2)\hat{j}
$$
- Very important -> "basis vectors"
				- showing the xy coordinate system
	- ##### We can make our own basis vectors (hats) 
		- to make infinite ways to make one vector
- ### linear combination
	- ###### when we add some type of basis vectors it creates a linear combination
	- #### the "span" of $\vec{v}$ and $\vec{w}$ is the set of all their linear combinations
		- $a\vec{v}+b\vec{w}$
			- letting a and b very over all real numbers
				- ###### This allows us to write any vector on the 2d plane
- ### Span in 3d space
	- #### 2d Span in 3d space is like 3d printing
		- when we try to take the span for a 2d vector (vector with two numbers only) in 3d all the possible values (span) will only draw a flat 2d plane through the origin of teh 3d space
	- #### 3d span in 3d space
		- ###### Again the span for this set is all possible linear combinations
			- $a\vec{v}+b\vec{w}+c\vec{u}$ 
				- with linear combinations for $\vec{v},\vec{w},\vec{u}$
			- ###### however if the third vector is "trapped" in another vector it will produce the same span as a 2d vector intuitively 

## Linear dependency
- ### Redundent vector 
	- ###### When a vector is trapped within another vector it is called 
		- ####  *Linearly dependent*
- ### You can write the linear dependent vector as a linear combination of the other vectors
	- $\vec{u}=a\vec{v}+b\vec{w}$
		- for some values of $\vec{a}$ and $\vec{b}$

## Linear independence
- ### Non reduntant vector
	- ###### When teh vector is actually contributing it is called
		- #### Linear independent
- ### You can describe this 
	- $\vec{u}=/=a\vec{v}+b\vec{w}$
		- for all values of a and b
