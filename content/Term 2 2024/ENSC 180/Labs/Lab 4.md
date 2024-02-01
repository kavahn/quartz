# Lab 4 of [[ENSC 180]]

## Question 1
#### Code:
```
%% Q1: Character Array (String)

function newStr = ENSC180Lab4Q1(str)

str = str(isletter(str));

% even to upper case

str(2:2:end)=upper(str(2:2:end));

% return

newStr=str;

end
```
##### Input:
```
>> str='abcs{!)@#*hello';
>> newStr=ENSC180Lab4Q1(str);
>> disp(newStr);
```
#### Output
```
aBcShElLo
```
###### explanation
- its pretty straight forward, but it just sees the string str and converts it to only lettres then changes ever other letter into a capital letter.


## Question 2

#### Code: 
```
%% Q2: Text File Operations

disp(' ');

disp('Q2 Operations:');

% Part 1: Writing to the file

filename = 'studentGrades.txt';

fileID = fopen(filename, 'w');

fprintf(fileID, '%-12s%12s%12s\n', 'ID', 'Number', 'Grade'); % header

data = [1, 301011234, 100;

2, 301022468, 85;

3, 201037890, 93;

4, 123456789, 67;

5, 987654321, 34];

for i = 1:size(data, 1) % Writing data rows

fprintf(fileID, '%-12d%12d%12d\n', data(i, :));

end

fclose(fileID); % Closing the file after writing

% Part 2: Reading from the file

fileID = fopen(filename, 'r');

disp(fgetl(fileID)); % Display the first line (header)

dataRead = fscanf(fileID, '%d %d %d', [3 inf]); % Read and store the data

dataRead = dataRead'; % Transpose to correct shape

fclose(fileID); % Closing the file after reading

disp(dataRead); % Displaying the read data

% Part 3: Calculating and displaying the average grade

averageGrade = mean(dataRead(:, 3));

disp(['Average Grade: ', num2str(round(averageGrade, 2))]);
```

#### Output:
| ID | Number | Grade |
| ---- | ---- | ---- |
| 1 | 301011234 | 100 |
| 2 | 301022468 | 85 |
| 3 | 201037890 | 93 |
| 4 | 123456789 | 67 |
| 5 | 987654321 | 34 |  
Average Grade: 75.8
###### Note (the output isn't actually a table but it is the only nice way of putting it in this software)
![[Lab 4-20240201230423663.webp]]
###### Explanation:
- ##### (Creating our file)**:
  - Name our list 'studentGrades.txt' and add to it.
  - Open the list to start writing, planning to fill it with student data.
  - At the top, write our categories: 'ID', 'Number', and 'Grade' 
  - List down specific details for each student:
    - ID.
    - number
    - grade.
  - Once done listing all students,  close the list 

- ##### (Reading from our file)**:
  - Open our list again because we need to check the content.
  - Close the list after reviewing to ensure no accidental changes are made.

- ##### ( Analyzing the data)**:
  - Calculate the average grade by adding all grades together and then dividing by the number of grades 
  