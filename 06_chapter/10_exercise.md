**WDI Fundamentals Unit 6**

---

##![Your Turn](../assets/exercise.png) Your Turn

Now that we have a way to store keys and values, we can add some complexity to our contact book. Are you ready?

Again, our goal is to create a contact book that allows us to store contact info (we'll want to store first name, last name, phone, and email), add a new contact, list contacts, and find contacts by first or last name.

Before taking a look at the instructions below, take a few minutes to think through the problem and try your hand at breaking things down into steps by writing out pseudo code. Although the instructions will guide you through building the program, it's helpful to get practice thinking about how you would approach different problems. Programmatic thinking gets easier with practice!

Instructions

1. Let's get a fresh start! Open a new session in [repl.it](https://repl.it/).
2. Write the code to perform the actions listed below, using repl.it's editor window.
3. Click 'play' to run the code.
4. Call each function from the console window. Try using different parameters to make sure they're working properly.

### Let's get started!

* Create an array called `contacts`. The contacts array should contain three associative arrays, one for each contact stored in our book. Here's the contact information for each person:

| 'firstName' |  'lastName' |  'phone'        |    'email'           |
|-            |-            |-                |-                     |
| 'John'      |   'Doe'     |'(512) 355-0453' |'johndoe@email.com'   |
| 'Jane'      |   'Doe'     |'(312) 641-2203' |'janedoe@email.com'   |
| 'Suzie'     |   'Smith'   |'(415) 604-4219' |'suziesmith@email.com'|

* Next let's create a function `addContact` that accepts one parameter, `newContact`. This function should add the newContact to the end of the contacts array and return the contacts array. When you're done, try calling the function and passing in an associative array as a parameter to make sure it's working.
* Now let's create a `listContacts` function to list our contacts. This function should loop through the contacts array and logs the first and last name for each contact to the console, i.e. 'John Doe'.
* Now let's create a function that will search through our contacts and return the contact info for any person that has a matching first or last name. Create a `search` function, which will take one parameter, `name`. In the `search` function, use a loop to iterate through the contacts array and return the current contact if their first *or* last name matches the `name` parameter.

Woohoo! You've done it! We now have a working contact book that allows us to store contacts, add contacts, list contacts, and find a contact by first or last name. Congratulations!

> *Stuck? Check out the [solutions](https://github.com/generalassembly-studio/fundamentals/blob/master/exercise-solutions.md) to see what you can do.*

---

Feeling confident? [Test your understanding of iteration with this next quiz.](09_quiz.md)
