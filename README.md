# EECS 638 - Final Project
## Spring 2013

This is the repository for Bill Parrott's submission for the [Introduction to Expert Systems](http://people.eecs.ku.edu/~jerzy/eecs638.html) class at the [University of Kansas](http://www.ku.edu/).

### Compiling the program
There is a makefile included with this submission that copies the necessary OPS/R2 files and compiles both parts of the assignment.

To compile the program, simply run `make`.

### Running the program
To run the project, enter `./project` after compiling. The output for the project is stored in the file `output.txt`.

The program reads from the `input.txt` file. Replace this file with one containing the data you wish to test.

### Issues Encountered
I was able to get the program running fairly well, but I ran into difficulty getting the system to generate its own comments in the output file. I believe this is related to the method I used to simulate the clock cycle. I have left the statements in the `rules.ops` file, though there are no rules that use them as part of any output written to `output.txt`.