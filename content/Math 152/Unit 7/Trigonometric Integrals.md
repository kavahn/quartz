# Unit 7.2 Of [[Math 152]]

### Ex.
- ###### a. $\int \sin^{2}3x \, dx$ 
	- we can use the double angle identity to simplify the integrand $\cos_{}2\theta=1-2\sin ^{2}\theta$ => $\sin^{2}\theta= \frac{{1-\cos 2\theta}}{2}$
		- => $\int \frac{{1-\cos 6x}}{2} \, dx$ => ${\frac{1}{2}}x - \frac{{\sin 6x}}{12} + C$ 
- ###### b. $\int  \cot^2{3x \, dx\implies \int \frac{{\cos^{2}3x}}{\sin^{2}3x} \, dx}\implies \int \frac{{1-\sin^{2}3x}}{\sin^23x} \, dx$ 
	- => $\int \csc^{2}3x \, dx - \int 1 \, dx=\frac{{-\cot(3x)}}{2}-x+C$

## Products of sines and cosines
- #### To evaluate $\int \sin^{n}x\cos^{m}x \, dx$, there are only two possibilities 
	- ##### (easy case) 1. use $\sin^{2}+\cos^{2}=1$ 2. u-sub (Let u equal the even function)
		- ###### At least one of the numbers n and m is odd
			- $\int \sin^{3}x\cos^{2}x \, dx$=
				- $\int \sin x (1-\cos^{2}x)\cos^{2}x \, dx$
					- => let u = cosx, du = -sinx dx
						- => $-\int (1-u^{2})u^{2} \, du$ => $\int u^{4}-u^2 \, du$ => $\frac{\cos^{5}x}{5}-\frac{\cos^{3}x}{3} +C$
	- ##### (harder case) 1. use  $\sin^{2}+\cos^{2}=1$ 2. use the [[Reduction Formulas]]
		- ###### Both n and m are even
			- $\int \sin^{2}x\cos^{2}x \, dx$
				- => $\int (1-\cos^{2}x)\cos^{2}x \, dx \implies \int \cos^{2}x \, dx-\int \cos^{4}x \, dx$
					- => $\int  \cos^{2}x \, dx - \left( \frac{1}{4}\cos^{3}x\sin x +{\frac{3}{4}}\int \cos^{2}x \, dx \right)$
						- => $\frac{1}{4}\int  \cos^{2}x\, dx-\frac{1}{4}\cos^{3}x\sin x$
							- => $\frac{1}{4}\left( \frac{1}{2} \cos x\sin x+\frac{1}{2}x\right)-\frac{1}{4}\cos^{3}x\sin x +C$
- ### Ex.
	- ###### a.  $\int \cos^{5}x \, dx$
		- => $\int  \cos^{5}x \, dx = \int  \cos x(1-\sin^{2}x)^2 \, dx$ 
			- let u = sinx, du = cosx
				- => $\int  (1-u^{2})^2 \, du$
					- =>$\int 1-2u^{2}+u^4 \, du\implies u-\frac{2}{3}u^3+\frac{u^{5}}{5}+C$
- ### Integrating other trig functions:
	- #### a. $\int  \tan x \, dx$
		- => $\int \frac{{\sin x}}{\cos x} \, dx$
			- => -$\int du= \, dx$

