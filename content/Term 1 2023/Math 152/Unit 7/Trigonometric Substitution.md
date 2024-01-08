# Unit 7.4 of [[Math 152]]

## Motiviating problem
- ###### $\int \sqrt{ {a^2-x^2} } \, dx$
	- ###### We cant integrate this :(
		- but if we make the integral in terms of angle because this is a semi circle, we can use the pythagreon identity to re write it as
			- $x=a\sin \theta,\implies{1}-\sin^{2}\theta=\cos^{2}\theta$
				- this allows us to get rid of the root sign with algebra and replace it with absolute value.
	- let : $x=\sin \theta$
		- $dx=\cos \theta d\theta$
			- $I = \int \sqrt{ {1-\sin ^{2}\theta} } \cos \theta \, d\theta$
				- => using the pythagrean identity
					- => $\int \sqrt{ \cos^{2}\theta  }\cos \theta \, d\theta$
						- => $\int  \cos^{2}\theta \, d\theta$
							- => ising the reduction formula 
								- => $\frac{1}{2}\sin \theta \cos \theta+\frac{1}{2}\theta+C$
								- ###### writing in terms of x
									- =>
