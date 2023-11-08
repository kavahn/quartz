# Unit 10.2 of [[Math 152]]

## Derivatives with Parametric Curves
- #### Much like differential equations we can think about this as the derivative version of it
	- ### Definition
		- $\frac{dy}{dx}=\frac{\frac{dy}{dt}}{\frac{dx}{dt}}$ where $\frac{dx}{dt}=/=0$ very simple :)


## Integrals with Parametric Curves
- #### Much like derivatives with parametric curves we have to treat it as functions for each input
	- ### Definition
		- $A=\int _{a}^{b}y \, dx\implies \int _{\alpha}^{\beta}g(t)f'(t) \, dt$

## Arc Length with Parametric Curves
- #### Knowing what we know about [[Arc Length]] 
	- ###### The equation $L=\int_{a}^{b}\sqrt{ 1+\frac{dy}{dx}^2 }  \, dx$ 
		- this describes only normal Cartesian functions however if we want it for Parametric functions we must
			- then we can us the derivatives with parametric curves equation and sub it for $\frac{dy}{dx}$ 
				- $\implies L=\int _{\alpha}^{\beta}\sqrt{ (\frac{dx}{dt})^2+\left( \frac{dy}{dt} \right)^2 } \, dt$

## Surface Area
- #### very simple as well :) same thing about [[Arc Length]]
- ### Definition
	- ## $S=\int _{\alpha}^{\beta}2\pi y\sqrt{ \left( \frac{dx}{dt} \right)^{2}+\left( \frac{dy}{dt} \right)^{2} } \, dt$
	- 