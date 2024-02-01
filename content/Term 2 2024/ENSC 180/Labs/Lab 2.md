# [[ENSC 180]] Lab 2

# Question 1
### Code 
```
% Question 1

% 1

img = imread('ngc6543a.jpg');

image(img);

R = img(:,:,1);

G = img(:,:,2);

B = img(:,:,3);

% 2

[r, c, ~] = size(img);

blackPixelCount = 0;

tic;

for x = 1:r

for y = 1:c

% Check if the pixel is black

if img(x, y, 1) == 0 && img(x, y, 2) == 0 && img(x, y, 3) == 0

% Increment the counter if the pixel is black

blackPixelCount = blackPixelCount + 1;

end

end

end

elapsedTime = toc;

disp(['FOR: Total black pixels: ', num2str(blackPixelCount)]);

disp(['FOR: Elapsed time: ', num2str(elapsedTime), ' seconds.']);

% 3

tic;

colorSum = sum(img, 3);

blackPixelCount = sum(colorSum == 0, 'all');

elapsedTime = toc;

disp(['SUM: Total black pixels using sum method: ', num2str(blackPixelCount)]);

disp(['SUM: Elapsed time using sum method: ', num2str(elapsedTime), ' seconds.']);

% 4-5

% Use the processArray function on each color component

[maxValueR, countGreaterThan128R, modifiedR] = processArray(R);

[maxValueG, countGreaterThan128G, modifiedG] = processArray(G);

[maxValueB, countGreaterThan128B, modifiedB] = processArray(B);

% Display the results for the Red component

disp('Red Component:');

disp(['Max Value: ', num2str(maxValueR)]);

disp(['Number of Entries > 128: ', num2str(countGreaterThan128R)]);

% Display the results for the Green component

disp('Green Component:');

disp(['Max Value: ', num2str(maxValueG)]);

disp(['Number of Entries > 128: ', num2str(countGreaterThan128G)]);

% Display the results for the Blue component

disp('Blue Component:');

disp(['Max Value: ', num2str(maxValueB)]);

disp(['Number of Entries > 128: ', num2str(countGreaterThan128B)]);

% 6

modifiedImg = cat(3, modifiedR, modifiedG, modifiedB);

% Display the modified image

figure; % Creates a new figure window

image(modifiedImg); % Displays the modified image

axis off; % Hides the axis

title('Modified Image');

% Save the modified image

saveas(gcf, 'ngc6543a-new.jpg');
```

- ### 1. 
##### Code: 
```
img = imread('ngc6543a.jpg');
image(img);
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);
```
- ##### Output: 
![[Lab 2-20240126184933965.webp|296]]
- the first two lines art to read the image and print it, following 3 lines is to separate the R G B channels into the 3 dimensions

### 2.

##### Code: 
```
[r, c, ~] = size(img);
blackPixelCount = 0;
tic;
for x = 1:r
for y = 1:c
% Check if the pixel is black
if img(x, y, 1) == 0 && img(x, y, 2) == 0 && img(x, y, 3) == 0
% Increment the counter if the pixel is black
blackPixelCount = blackPixelCount + 1;
end
end
end
elapsedTime = toc;
disp(['FOR: Total black pixels: ', num2str(blackPixelCount)]);
disp(['FOR: Elapsed time: ', num2str(elapsedTime), ' seconds.']);
```
##### Output:
```
FOR: Total black pixels: 72673  
FOR: Elapsed time: 0.011453 seconds.
```
- basically what i have done here is set it so that the code starts a timer and starts a for loop that goes through the entire image looking if all 3 of the dimensions values of their respective RGB values are 0, and it increments the blackpixelcount variable, one it goes through all of the pixels and ends outputting the total black pixels and the elapsed time.

### 3
##### Code:
```
tic;
colorSum = sum(img, 3);
blackPixelCount = sum(colorSum == 0, 'all');
elapsedTime = toc;
disp(['SUM: Total black pixels using sum method: ', num2str(blackPixelCount)]);
disp(['SUM: Elapsed time using sum method: ', num2str(elapsedTime), ' seconds.']);
```

##### Output: 
```
FOR: Total black pixels: 72673  
FOR: Elapsed time: 0.002793 seconds.  
SUM: Total black pixels using sum method: 72673  
SUM: Elapsed time using sum method: 0.001349 seconds.
```
-  very similar to the for loop version but instead of using a for loop it uses sum and sums all the pixels then iterates based on that, and collects all the black pixels
	- and the sum method is almost 2x as fast as the for loop

### 4
- ######  im not to sure how to show this but here is the process Array code
```
function [maxValue, countGreaterThan128, modifiedArray] = processArray(inputArray)

% Find the maximal value of all entries of the input array

maxValue = max(inputArray(:));

% Count the number of entries with values > 128

countGreaterThan128 = sum(inputArray(:) > 128);

% For each entry of the input array, change its value to 255 if > 128,

% otherwise 0. Assign the result to a new array.

modifiedArray = zeros(size(inputArray), 'like', inputArray); % Preserves the input data type

modifiedArray(inputArray > 128) = 255;

modifiedArray(inputArray <= 128) = 0;

% Returns maxValue, countGreaterThan128, and modifiedArray

end
```
- basically it goes through the given array and anything above 128 brightness in that color dimension it changes to the max 255

### 5
- ##### Code
```
% Use the processArray function on each color component

[maxValueR, countGreaterThan128R, modifiedR] = processArray(R);

[maxValueG, countGreaterThan128G, modifiedG] = processArray(G);

[maxValueB, countGreaterThan128B, modifiedB] = processArray(B);

% Display the results for the Red component

disp('Red Component:');

disp(['Max Value: ', num2str(maxValueR)]);

disp(['Number of Entries > 128: ', num2str(countGreaterThan128R)]);

% Display the results for the Green component

disp('Green Component:');

disp(['Max Value: ', num2str(maxValueG)]);

disp(['Number of Entries > 128: ', num2str(countGreaterThan128G)]);

% Display the results for the Blue component

disp('Blue Component:');

disp(['Max Value: ', num2str(maxValueB)]);

disp(['Number of Entries > 128: ', num2str(countGreaterThan128B)]);
```
##### Output:
```
Red Component:  
Max Value: 255  
Number of Entries > 128: 40544  
Green Component:  
Max Value: 255  
Number of Entries > 128: 7662  
Blue Component:  
Max Value: 255  
Number of Entries > 128: 5442
```
- this code adapts the image array into something the process array can read, then re adapts it back to the RGB channels after it is modified also counts how many pixels have been amplified

### 6
##### Code:
```
modifiedImg = cat(3, modifiedR, modifiedG, modifiedB);

% Display the modified image

figure; % Creates a new figure window

image(modifiedImg); % Displays the modified image

axis off; % Hides the axis

title('Modified Image');
```
##### Output:
![[Lab 2-20240126225217387.webp|621]]
- complies all the RGB channels back into an image then outputs the image as a figure then adds the title of modified image

### 7
##### Code:
```
% Create a new figure and use tiledlayout for arranged subplots

figure;

t = tiledlayout('flow');

% Turn off the tile spacing to make the images close to each other

t.TileSpacing = 'compact';

% First tile for the original image

nexttile;

image(img);

title('Original Image');

axis off; % Turns off the axis

% Second tile for the modified image

nexttile;

image(modifiedImg);

title('Modified Image');

axis off; % Turns off the axis

% Save the figure as ngc6543a-two-images.jpg

print('ngc6543a-two-images','-djpeg');
```
##### Output:
![[Lab 2-20240126230844968.webp]]
- the code just compiles the two images into one plot.