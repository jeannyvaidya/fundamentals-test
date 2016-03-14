**WDI Fundamentals Unit 3**

---

# Boolean Logic

At this point, we've covered most of what you should know about basic expressions. However, there are a few quirks and exceptions that we've (until now) glossed over, especially related to boolean logic. Let's take a closer look at some of them.

* We'll start with **undefined** and **null** values. These two values represent a lack of data.
* Next, we will dive into **truthy** and **falsey** - the result of Javascript's attempt to convert non-boolean values to booleans at runtime.
* Finally: a challenge!

### Undefined
You've just opened a Javascript console. You want to define a new variable but aren't sure what the value is *just yet*.  

```javascript
var someData;
```
Without **assigning** a value to a variable, that variable becomes `undefined`. We can see this in real time:
```javascript
console.log(someData);
```
If we want to check to see if our variable is infact `undefined`, we may do so. Checking to see is a variable is `undefined` is important. It allows for you to verify that something exists before you use it (and thus keep from throwing errors).
```javascript
if (someData == undefined) {
  console.log('No definition found');
  someData = 'We are now assigning a value.';
}
```
We can also check for `undefined` using `typeof()`! This is because `undefined` is an Object that is immutable. If you'd like to learn more you should read [Mozilla's MDN entry for Undefined].
```javascript
// we need a new variable...
var anotherData;
if (typeof(anotherData) == 'undefined') {
  console.log('No definition found');
}
```


### Null

Null values are values that you decide have **no value**. But why would I want to do this? Why not use `undefined`? As it turns out, we can't - variables in JavaScript are only `undefined` until they've been assigned a variable for the first time. `null` gives us a way to 'reset' the value of a variable to nothing.

Here's an example. Suppose you have an application for keeping track of your things. You might have a string called `locationOfKeys` which indicates where your keys are. Then, one day, your keys get lost. What's the value of `locationOfKeys` now? Well, it's 'nothing' - they're lost. If `null` didn't exist, we would have to invent a special string value (perhaps `"lost"`) to signify that the keys are missing. `null` gives us a standard way of handling that kind of situation where we can simply say `locationOfKeys = null;`

That's the purpose of **null**. It is designed to represent the *lack of a value*. Whenever variables are defined without any value, they are `undefined`. This can become tricky to troubleshoot over time and it is a catch-all for *everything without a value*. We can **specify** our variables as `null` to represent there is no data.

```javascript
// we will define a variable with no value, or null
var playerScore = null;
```
We can then **evaluate** if our value is `null`:
```javascript
playerScore == null // 'The player has not scored anything.'
```
What if we are provided with a user's input to represent a player's actions on a timed game? In *Dance, Dance, Revolution* a player must perform an action at a precise interval. It streams a set of commands a player must *dance* to. These are timed to music. The actions stream across the screen and as they pass by the middle of the screen the player *must* perform an action (or they don't score a point). The game can evaluate the player's score in real time!
```javascript
var userInput = null;
userInput == null // no points.. this time
```

### 'falsey' / 'truthy'

We've seen in the first few lessons that some operators can behave differently depending on the kind of values that they are operating on. For example, in the expression `1 + 2 + 3 + 4`, the `+` operator is performing addition; however, in the expression <code>'Happy birthday, ' + 'Tom'</code>, the `+` operator is working with strings, so it performs a concatenation instead.

Another example of this is the logical operators NOT(`!`), OR (`||`), and AND (<code>&&</code>); although they're primarily used with boolean values, they can also accept inputs that are strings, numbers... pretty much anything. When this happens, the logical operators categorize their inputs as being either 'falsey' and 'truthy'. But what do these words mean?

* To be **falsey** means that boolean operators act in mostly the same way that they would if the value was `false`. For instance, using `!` (NOT) on a "falsey" value will evaluate to `true`, just as if you'd written `!false`. The "falsey" category of values includes: the number `0`, empty strings (`''`), `null`, and `undefined`. `false` is, of course, also "falsey".

* Being **truthy** is exactly the opposite of being falsey; using `!` (NOT) on a "truthy" value would evaluate to `false`. Anything that isn't "falsey" is "truthy", including all strings, all non-zero numbers, and (of course) `true`.

As they say, "_to a hammer (read: boolean operator), everything looks like a nail (read: boolean value)_".

Below are the exact rules that the boolean operators follow when dealing with non-boolean input values.

| 'Falsey'            |  'Truthy' |
|-                    |-          |
| `false`             | `true`    |
| 0                   | All numbers except 0, including 'Infinity' (what you get after dividing by 0) |
| Empty strings ('')  | All non-empty strings |
| Undefined, Null, and NaN ('Not A Number', a special type of numeric value) | Pretty much everything else |


In JavaScript, the boolean operators `!`, `||`, and <code>&&</code> follow the rules below to determine how to behave.
* NOT: If the input is "truthy", return `false`; if the input is "falsey", return `true`.
* OR: Return the first "truthy" value; if both values are "falsey", return the last "falsey" value.
* AND: Return the first "falsey" value; if both values are "truthy", return the last "truthy" value.

Take a look at the following table and see if you can predict the results in the last three columns given the values for A and B in each row. 

|     A     |       B      |   A AND B  |   A OR B  |   NOT A  |
|-          |-             |-           |-          |-         |
| **False** |  **False**   |  False     |  False    |  True    |
| **False** |  **True**    |  False     |  True     |  True    |
| **True**  |  **False**   |  False     |  True     |  False   |
| **True**  |  **True**    |  True      |  True     |  False   |

### Test Yourself
Can you predict how the following expressions will be evaluated? Check your answers in repl.it.
* `1 || true`
* `3 || null`
* <code>!('')</code>
* <code>false && undefined</code>
* <code>true && !0</code>
* `null || 3`

---

[Here's another exercise for you](10_exercise.md) - give it a shot.
