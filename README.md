# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Cynthia Morales, Amanda Migliori

## Summary
we made a circut that takes in a byte of memory, stores it in one of 4 memory cells, and can then output it to the lights using a multiplexer

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
you get an error because of the combinatorial loop. And it wont synthasize 

### What is the meaning of always @(*) in a sensitivity block?
using @(*) means that all variables in the module will be used in the always block. 

### What importance is memory to digital circuits?
being able to remeber and store information is like the cornerstone of digital computing. Being able to remeber alows you to do advanced logic. Being able to remeber lets you do like everything. 
