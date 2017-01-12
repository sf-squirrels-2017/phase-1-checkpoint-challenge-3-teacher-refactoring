# Super Crazy Bonus Release

Edit this file to answer the following questions. Give examples. You may need to do a bit of research. :)

1. Why is Hash.fetch useful?
***.fetch lets you have a default value. for example @name = options.fetch(:name, "") this allows you to put in a name but if you don't it will default to ""

2. What is the disadvantage of single inheritance, and what's a possible solution to that problem?
***Single inheritance is that things can only inherit from one class. A way around this is making modules.

3. Why are these classes initialized with an options hash?
***The options hash allows you to put in a default value in case you forget to put something in it won't break your code.

4. What is the purpose of the private keyword in a class? What does it protect you from and why is that valuable?
***The private keyword allows you to have something in your class that the user cannot see. Like if you had a bank account class you would probably want to make someone's pin number and things like that private.

5. Why are concepts like encapsulation, single responsibility, and abstraction important? Now that you've been programming for a while, have you seen any advantages for yourself, or can you imagine them in the future?
