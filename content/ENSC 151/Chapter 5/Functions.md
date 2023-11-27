
# C++ for [[ENSC 151]]

## What is a function
- #### Allows developer to use same code in more than one place
- #### Declared then saved in libraries/headers


## Library functions 
- #### Library functions can be included into your code and can be call at anytime

## Creating Functions
- ### Definition
	- called after the main function
	- #### Anatomy
		- ###### data/return type
			- data type that will be returned by the function
		- ###### function name
		- ###### arguments/parameters
			- input given to the function
		- ###### body / implementation
			- tells code what to do
		- ###### Return statement
			- ending point of the function 
		- ![[Functions-20231116073436724.webp|287]]
- ### Prototype
	- called before the main function
- ### Default arguments
	- allows for a "default value" to be used if no parameters are provided
	- implemented by setting parameters equal to a value in definition
- ### Overloaded Functions
	- allows a developer to define multiple function to the same name
	- each function should have different parameters
	- the compiler will know which function is being called because of the parameters
- ### Template functions
	- allows functions to return diffrent types of data
	- uses a "typename" as a placeholder for the alctual return type
	- the compiler determines what "type" to use
- ### Recursive functions
	- A function that calls itself in its body
	- will continue to cal untill some condition is met
	- the "base case" of the function occurse once this occurs


- ## Arrays
	- ### What is an array
		- holds items of a data type in a contiguous memory
		- use array class template
		- unlike vectors, the size is constant
		- *to define an array you must*
			- 'std::array<type, arraySize> arrayName;'
			- ![[Functions-20231116074722916.webp|532]]
	- ### Interacting with an array
		- you can assign an element of an array like a normal variable
			- a[2]=3;
		- access elements like a normal varibable 
			- std::cout<<a[2];
				- this prints 3
		- *to make them somewhat understading of their bounds use a.a prefix*
		- to know about their own size 
			- std::cout<<a.size(); 
				- this prints 4 telling how big is the array
		- elements are not implicitly zero
	- ### Filling an array with a loop
		- If you tried to index past bounds (ie. a[152]) this would throw an exception (be an error) ● size_t is a data type used to represent the size of any object
	- ### Pre assigning arrays
		- you can just 
			- std::array b{0.1, 0.2, 0.3, 0.4};
			- std::array c{1, 2, 3, 4};
## anatomy 
