
# Lab 1 for [[ENSC 180]]

## Q1:
- #### 1)
###### Input:
```
A = [17, 5, 2, 1, 4, 3, 2, 1, 0, 7, 7, 6];
N = length(A);
B = sum(A) / N;
```
###### Output:
$B=4.5833$

- #### 2)
###### Input:
```
A = [17, 5, 2, 1, 4, 3, 2, 1, 0, 7, 7, 6];
N = length(A);
B = sum(A) / N;
V = (sum(((A-(B)).^2)) / N);
```
###### Output:
$V=19.2431$

## Q2:
- #### 1)
###### Input:
```
b = magic(5);
s1 = sum(b,2);
```
###### Output:
$$
s_{1}=
\left[
\begin{matrix} 
65  \\
65  \\
65  \\
65  \\
65
\end{matrix}
\right]
$$
- #### 2)
###### Input:
```
b = magic(5);
s2 = sum(b,1);
```
###### Output:
$$
s_{2}=
\left[
\begin{matrix} 
65 &65& 65 &65 &65
\end{matrix}
\right]
$$

- #### 3)
###### Input:
```
b = magic(5);
s3 = sum(diag(b));
```
###### Output:
$$
s_{3}=
\left[
\begin{matrix} 
65
\end{matrix}
\right]
$$
- #### 4)
###### Input:
```
b = magic(5);
s4 = sum(diag(fliplr(b)));
```
###### Output:
$$
s_{4}=
\left[
\begin{matrix} 
65
\end{matrix}
\right]
$$
- #### 5)
###### Input:
```
b = magic(5);
s5 = b < 5;
```
###### Output:
5x5 Logical array
$$
s_{5}=
\left[
\begin{matrix} 
0& 0& 1 &0& 0  \\
0& 0& 0 &0& 0  \\
1& 0& 0& 0 &0  \\
0& 0& 0& 0& 1  \\
0& 0 &0& 1& 0\\
\end{matrix}
\right]
$$
- #### 6)
###### Input:
```
b = magic(5);
s6 = b >= 20;
```
###### Output:
5x5 logical array
$$
s_{6}=
\left[
\begin{matrix} 
0& 1 &0& 0& 0  \\
1 &0& 0& 0& 0  \\
0& 0& 0 &1& 1  \\
0 &0& 0& 1& 0  \\
0& 0& 1& 0 &0
\end{matrix}
\right]
$$
- #### 7)
###### Input:
```
b = magic(5);
s5 = b < 5;
s6 = b >= 20;
>> b(s5|s6) = 100
```
###### Output:
$$
s_{7}=
\left[
\begin{matrix} 
17 &100& 100& 8& 15  \\
100& 5 &7 &14 &16  \\
100& 6& 13& 100 &100  \\
10 &12 &19& 100& 100  \\
11 &18& 100 &100& 9
\end{matrix}
\right]
$$

## Q3:
- #### 1)
###### Input:
```
M = 2;
X = zeros(M, M);
T2 = dct(eye(M));
```
###### Output:
$$
T_{2}=
\left[
\begin{matrix}
0.7071 & 0.7071 \\
0.7071 & -0.7071
\end{matrix}
\right]

$$
- #### 2)
###### Input:
```
M = 2;
X = zeros(M, M);
T2 = dct(eye(M));
M1 = T2*T2.';
```
###### Output:
$$
M_{1}=
\left[
\begin{matrix}
1. 0000& 0 \\
0 & 1.0000
\end{matrix}
\right]

$$
- #### 3)
###### Input:
```
M = 2;
X = zeros(M, M);
T2 = dct(eye(M));
X2 = ones(2);
three = T2*X2;
```
###### Output:
$$
three=
\left[
\begin{matrix}
1.4142 & 1.4142 \\
0 & 0
\end{matrix}
\right]
$$
- #### 4)
###### Input:
```
M = 2;
X = zeros(M, M);
T2 = dct(eye(M));
X2 = ones(2);
four = T2*X2*T2.';
```
###### Output:
$$
four=
\left[
\begin{matrix}
2.0000 & 0 \\
0 & 0
\end{matrix}
\right]
$$
- #### 5)
###### Input:
```
M = 4;
T4 = dct(eye(M));
```
###### Output:
$$
T_{4}=
\left[
\begin{matrix} 
0.5000 & 0.5000 & 0.5000 & 0.5000  \\
0.6533 & 0.2706 & -0.2706 & -0.6533 \\ 
0.5000& -0.5000& -0.5000& 0.5000  \\
0.2706& -0.6533& 0.6533 & -0.2706
\end{matrix}
\right]
$$
- #### 6)
###### Input:
```
M = 4;
T4 = dct(eye(M));
six = T4*T4.';
```
###### Output:
$$
six=
\left[
\begin{matrix} 
1.0000 &0& 0& 0\\
0& 1.0000& 0& 0  \\
0 &0& 1.0000 &0 \\
0& 0& 0& 1.0000
\end{matrix}
\right]
$$
- #### 7)
###### Input: 
```
M = 4;
T4 = dct(eye(M));
X4 = [1 2 3 4; 1 2 3 4; 1 2 3 4; 1 2 3 4];
seven = T4*X4;
```
###### Output
$$
seven=
\left[
\begin{matrix} 
2.0000 &4.0000& 6.0000& 8.0000\\
0& 0& 0& 0  \\
0 &0& 0 &0 \\
0& 0& 0& 0
\end{matrix}
\right]
$$

- #### 8)
###### Input:
```
M = 4;
T4 = dct(eye(M));
X4 = [1 2 3 4; 1 2 3 4; 1 2 3 4; 1 2 3 4];
eight = T4*X4*T4.';
```
###### Output:
$$
eight=
\left[
\begin{matrix} 
10.0000& -4.4609& 0& -0.3170  \\
0 &0& 0& 0  \\
0 &0 &0& 0  \\
0& 0& 0& 0
\end{matrix}
\right]
$$
- #### 9)
###### Input:
```
M = 4;
T4 = dct(eye(M));
X4 = [1 2 3 4; 1 2 3 4; 1 2 3 4; 1 2 3 4];
nine = sum(X4);
```
###### Output:
$$
nine=
\left[
\begin{matrix} 
4& 8& 12& 16  \\
\end{matrix}
\right]
$$
- #### 10)
	- 1. **First row**: All the elements are identical and positive.
	- 2. **Second row**: This row starts with a positive value, decreases to a smaller positive value, goes through zero, and then has the equivalent negative values in the reverse order. It's a form of alternating symmetry. If we split the row by the middle, each half is the mirror image of the other in terms of absolute value, but with signs flipped.
	- 3. **Third row**: The values alternate between positive and negative, but with the same absolute value in the first and last positions and in the two middle positions. This row is symmetric in the same fashion as the second row. If you split it in the middle, the halves are mirror images in terms of absolute values, with signs flipped
	- 4. **Fourth row**: This row is similar to the second one, as it features the same type of symmetry. This row also begins with positive values which decrease, followed by the negative reflection of these values in reverse order.