# Super Crazy Bonus Release

Edit this file to answer the following questions. Give examples. You may need to do a bit of research. :)

1. Why is Hash.fetch useful?
Returns a value from the hash for the given key. If the key can’t be found, there are several options: With no other arguments, it will raise an KeyError exception; if default is given, then that will be returned; if the optional code block is specified, then that will be run and its result returned.

h = { "a" => 100, "b" => 200 }
h.fetch("a")                            #=> 100
h.fetch("z", "go fish")                 #=> "go fish"
h.fetch("z") { |el| "go fish, #{el}"}   #=> "go fish, z"
The following example shows that an exception is raised if the key is not found and a default value is not supplied.

h = { "a" => 100, "b" => 200 }
h.fetch("z")
produces:prog.rb:2:in `fetch': key not found (KeyError)

2. What is the disadvantage of single inheritance, and what's a possible solution to that problem?

Inheritance results in a very tight binding between a superclass and its subclasses.
Removing or swapping out a superclass will usually break subclasses. Subclasses are entirely dependant on their superclass to function effectively.
It's inflexible. You are burdened by methods and behavior defined in a more general superclass, making down-the-line changes and customization difficult. Decisions made early on haunt the entire class hierarchy. See the fragile base class problem. 

Inheritance relationships generally can't be altered at runtime.
In many OOP languages, you can only inherit from a single class without introducing the problems associated with multiple inheritance. This can be restrictive. For example, if you have a Person class, with the subclasses Student and Employee. What if you have a person who is both a Student and an Employee?

3. Why are these classes initialized with an options hash?
If you want to initialize new instances of your class and specify values for its attributes directly, you can implement an initialize method with a lot of arguments. Or you can use a Hash.
It is still possible to create a new instance without arguments (Dog.new), or passing in a Hash with attribute/value pairs.


4. What is the purpose of the private keyword in a class? What does it protect you from and why is that valuable?
Both Private and Protected methods are not accessible from outside of the object as they are used internally to the object.

Private methods and Protected methods, whilst both being inaccessible outside of the scope of the object, have a subtle difference.

To define a private method you use the private keyword.

5. Why are concepts like encapsulation, single responsibility, and abstraction important? Now that you've been programming for a while, have you seen any advantages for yourself, or can you imagine them in the future?

Data Abstraction and Encapsulation
Abstraction refers to the act of representing essential features without including the background details or explanations. Classes use the concept of abstraction and are defined as a list of abstract attributes. Storing data and functions in a single unit (class) is encapsulation. Data cannot be accessible to the outside world and only those functions which are stored in the class can access it.

Inheritance
Inheritance is the process by which objects can acquire the properties of objects of other class. In OOP, inheritance provides reusability, like, adding additional features to an existing class without modifying it. This is achieved by deriving a new class from the existing one. The new class will have combined features of both the classes

I find abstraction and encapsulation useful, inheritance might be useful when there are many methods that can be shared accross classes.
