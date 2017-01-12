# Super Crazy Bonus Release

Edit this file to answer the following questions. Give examples. You may need to do a bit of research. :)

1. Why is Hash.fetch useful?
First reason: Hash#fetch PROVIDES BETTER HANDLING OF DEFAULT VALUES FOR MISSING KEYS
Second reason: Using Hash#fetch MAKES IT EASIER TO WORK WITH NESTED HASHES

2. What is the disadvantage of single inheritance, and what's a possible solution to that problem?
The disadvantage is you can not inherit from multiple parent, the solution is using modules, so you can include other functions that are not provided by your parent class.

3. Why are these classes initialized with an options hash?
for HANDLING OF DEFAULT VALUES FOR MISSING KEYS

4. What is the purpose of the private keyword in a class? What does it protect you from and why is that valuable?
to list private functions, it can not be called from outside of the class.

5. Why are concepts like encapsulation, single responsibility, and abstraction important? Now that you've been programming for a while, have you seen any advantages for yourself, or can you imagine them in the future?
Group shared attributes and methods in a parent class. So you do need to reinvent the wheel in the child class.
