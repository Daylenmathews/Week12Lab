# Lab 12 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions
In this lab, we explored how to build clock dividers using two different types of 
counters: modulo counters and ripple counters. We learned that modulo counters
provide precise frequency division by counting up to a specific value and toggling
the output when that count is reached. Even though they are accurate, they require
more hardware because they need an adder and a comparator. Ripple counters, on 
the other hand, rely on chaining T-flip-flops, which makes them much simpler to 
build, even though they can only divide by powers of two and introduce some delay 
between stages. Overall, this lab helped us understand how digital systems take 
a very fast clock, like the 100 MHz clock on the Basys 3 board, and slow it down 
to more usable speeds for things like LEDs or human-visible indicators.

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
The modulo counter divides the clock by 2 × the count value because the output only
toggles once each time the counter reaches its programmed number. A full cycle of
a square wave requires two toggles with one to go high and one to go low, so it takes
two full counts to complete a single output cycle. That is why the output frequency
is half of what the simple count calculation might suggest.
### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
The ring counter’s output goes to all 1s on the first clock cycle because starting in 
an all-zero state is invalid for a ring counter. A ring counter needs exactly one high
bit to rotate around the register. If the register begins with all zeros, nothing can
move, so the circuit forces a valid pattern on the first clock. This forced pattern
looks like all 1s (or a preset value), allowing the ring counter to begin rotating correctly.
### 3 - What width of ring counter would you use to get to an output of ~1KHz?
To get an output of about 1 kHz from a 100 MHz clock using a ring counter, we would need 
to divide the clock by 100,000. Since a ring counter divides by the number of its stages,
we would need a 100,000-bit-wide ring counter. While possible in theory, this demonstrates 
why ring counters are not practical for large clock divisions.
