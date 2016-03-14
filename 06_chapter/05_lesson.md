**WDI Fundamentals Unit 6**

---

# Iterating Over Arrays

In the past few units, we've only been able to operate on one value at a time. One of the most useful things about a collection (and arrays in particular) is that, if we structure our code correctly, we can actually perform the same operation on *each value within a collection*. This process is called **iteration** - doing something over and over and over again, for each element in a set.

##Iterating with Loops

Suppose that we were given an array of starting values to work with - say, temperatures in degrees Fahrenheit - and wanted to convert them into another set of values - say temperatures in degrees Celsius - which would then be stored in a separate array.

```javascript
var tempsInF = [100, 72, 88, 15, 25, 32];
var tempsInC = [];
```

The formula for converting between Fahrenheit and Celsius temperatures is **C = (F - 32) * 5/9**, where `F` is the temperature in degrees Fahrenheit and `C` is the temperature in degrees Celsius. Because this is an operation that we'd like to do frequently, we might create a function for it like the one below.

```javascript
var fahrToCelc = function(degrees) {
  return (degrees - 32) * (5 / 9);
}
```

So how do we go about operating on the elements in `tempsInF`? Well, we could just start at the beginning and work our way through, one value at a time.

```javascript
tempsInC.push(fahrToCelc(tempsInF[0]));
```

Then, we could run an almost identical command to operate on each element in `tempsInF` and push the converted value onto the `tempsInC` array.

```javascript
  tempsInC.push(fahrToCelc(tempsInF[1]));
  tempsInC.push(fahrToCelc(tempsInF[2]));
  tempsInC.push(fahrToCelc(tempsInF[3]));
  tempsInC.push(fahrToCelc(tempsInF[4]));
  tempsInC.push(fahrToCelc(tempsInF[5]));
```

However, this code is extremely repetitious, and it also forces us to hard-code exactly how many times we want the operation to be performed. It'd be better if there were a way to run this code exactly as many times as there are elements in the first array. Fortunately, there is a tool perfectly suited for this task - our old friend the `for` loop.

```javascript
for (var i = 0; i < tempsInF.length; i += 1) {
  tempsInC.push(fahrToCelc(tempsInF[i]));
}
```

Take a minute to think about what's going on above.

By starting our count at zero, stopping before `i` reaches the length of the array, and increasing `i` by one every time, `i` will be successively set to the index of every element in our array, allowing us to perform the same operation on each element.

We could just as easily have gone in the opposite direction - starting at the last element, and ending with the first - simply by specifying different settings in the `for` loop:

```javascript
for (var i = (tempsInF.length - 1); i >= 0; i -= 1) {
  tempsInC.push(fahrToCelc(tempsInF[i]));
}
```

We could even operate only on every third element, by changing the value we increment i, like so (see `i += 3` ?):

```javascript
for (var i = 2; i < tempsInF.length; i += 3) {
  tempsInC.push(fahrToCelc(tempsInF[i]));
}
```

Despite being one of the most basic ways to iterate through an array, in JavaScript (and many other languages) this is also one of the most versatile ones!

### Test Yourself

Create a new repl.it session with the following JavaScript code:

```javascript
var oldArray = [12, 45, 6, 23, 19, 20, 20, 15, 30, 42];
```

How could you use iteration to generate a new array called `newArray` from `oldArray`, so that...
* Each value in `newArray` is the value of its corresponding element in `oldArray`, plus 5? (`[1, 2, 3]` becomes `[6, 7, 8]`)
* Each value in `newArray` is the square of the value of its corresponding element in `oldArray`? (`[1, 2, 3]` becomes `[1, 4, 9]`)
* Every *odd-indexed* value in `newArray` is double its corresponding element in `oldArray`, while every *even-indexed* value is unchanged? (`[3, 4, 5, 2, 6]` becomes `[3, 8, 5, 4, 6]`)
* `newArray` is the exact mirror image of `oldArray`? (`[1, 2, 3]` becomes `[3, 2, 1]`)

These ones are a bit tricky, so don't get discouraged if the answers don't come immediately; just keep experimenting with your code until it works!

---

Nice job! [Here's an exercise that should help you practice iteration.](07_exercise.md)
