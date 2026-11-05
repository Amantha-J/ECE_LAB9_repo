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
We made a circuit that takes in a byte of memory, stores it in one of 4 memory cells based on an address signal, and can then can output a chosen byte to the lights. This was a struggle to get working, but in the end we made it. thus why this is being turned in a week late :).


## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Structural Verilog cannot be used to implement latches because they are sequential functions in nature. It will not
synthesize in a combinatorial loop and will send an error.

### What is the meaning of always @(*) in a sensitivity block?
Using @(*) means that all variables in the module will be considered and available in the sensitivity block. 

### What importance is memory to digital circuits?
Memory is important to digital circuits because being able to remember and store information is like the cornerstone of digital computing. Being able to remember allows you to do advanced logic. Being able to remember lets you do like everything. It lets you remember your promise. 
