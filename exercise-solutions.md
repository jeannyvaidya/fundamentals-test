# UNIT EXERCISES: SOLUTIONS

The following solutions are for the Unit exercises. If you're looking for solutions for the unit homeworks, go to the [Memory Game repository](https://github.com/jeannyvaidya/wdi-fundamentals-memorygame) and look inside the `solution folder`for individual unit homework solutions.

### 1.2.1
1. `$ cd Downloads`
2. `$ cd World`
3. `$ ls`
4. `$ ls -a Europe`

### 1.3.1

Part 1: 

1. Command + Space. Inside search bar type "Terminal"
2. `$ cd Downloads`
2. `$ mv World ..` (will move to parent directory, in this case the Desktop)
3. `$ ../` (move back to the parent directory) and then  `$ ls`

Part 2: 

2. `$ cd World`
3. `$ mkdir Antarctica`
4. `$ ls`
5. `$ cd World (only if pwd if not World)`
6. `$ cd South America`
   `$ ls`
7. `$ mv Argentina ../North_America`
   `$ mv Chile ../North_America`
   `$ mv Brazil  ../North_America`
8. `$../ (back to World Directory)`
   `$ rm -r South_America`
9. `$ mkdir Americas`
   `mv North_America Americas`

### 1.3.1

get age

if age >= 65
	display message "Ticket price: $6.00"
	
otherwise if age < 25
	display message "Ticket price: $8.00"
	
otherwise
	display message "Ticket price: $10.00"

### 3.1.1
 1. Any expression that equals 30 is valid; e.g. `(1 + 9)*3`
 2. "                        " 'Hello World' is valid; e.g. `"Hello" + " " + "World"`
 3. "                        " `true` is valid; e.g. `(false && true) || true`

### 3.2.1
  1. `x + 10`
  2. `3*x + 5`
  3. `"Hello, " + x + "."` (or, in ES2015, we can use template strings: ``Hello, ${x}.``)
  4. `"Goodbye, " + x + "."` (or, in ES2015, we can use template strings: ``Goodbye, ${x}.``)

### 3.3.1
  1. `x || 100`
  2. `x && 50`
  3. `!x`

### 4.1.1
```javascript
if (x%3 === 0 && x%5 === 0) {
  result = "fizzbuzz";
} else if (x%3 === 0) {
  result = "fizz";
} else if (x%5 === 0) {
  result = "buzz";
} else {
  result = x
}
```

### 4.2.1

```javascript
for (var i = 1; i <= max; i += 1) {
  if (x%3 === 0 && x%5 === 0) {
    result = "fizzbuzz";
  } else if (x%3 === 0) {
    result = "fizz";
  } else if (x%5 === 0) {
    result = "buzz";
  } else {
    result = x
  }
  console.log(result);
}
```

### 5.1.1

```javascript
var sayHello = function(name){
  return "Hello, " + name + ".";
};
var areBothEven = function(a, b){
  return a%2 === 0 && b%2 === 0;
};
var hotOrNot = function(temp){
  return (temp > 75)? "hot" : "not hot";
  //// using an `if` statement is also acceptable
};
var threeIfNull = function(num){
  return num || 3;
  //// using an `if` statement is also acceptable
};
var greatest = function(a, b, c){
  greatest = a;
  if (greatest < b) {
    greatest = b;
  }
  if (greatest < c) {
    greatest = c;
  }
  return greatest;
  // using ternary operations as a solution
  // is more advanced and therefore not expected
  // e.g. return (a > b)? a : ((b > c)? b : c);
};
```

### 5.2.1

```javascript
var fizzBuzz = function(num){
  for (var i = 1; i <= num; i += 1) {
    if (x%3 === 0 && x%5 === 0) {
      result = "fizzbuzz";
    } else if (x%3 === 0) {
      result = "fizz";
    } else if (x%5 === 0) {
      result = "buzz";
    } else {
      result = x
    }
    console.log(result);
  } // yes, this is literally the same code from Ch4
};
```

### 6.1.1
```js
var contacts = ["Matt Smith", "Sam Davis", "Ashley Jones"];

var addContact = function (name) {
    contacts.push(name);
    return contacts;
 }

 var findContact = function (index) {
     return contacts[index];
 }

 var updateLastContact = function (newName) {
     contacts[contacts.length - 1] = newName;
     return contacts;
 }


 findContact(3);
 addContact("Suzie");
 updateLastContact("Sue Miller");```

### 6.2.1

```js
var cups = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
var ounces = [];

var convertToOunces = function () {
	for (var i = 0; i < cups.length; i++) {
		ounces.push(cups[i] * 8);
	}
	console.log(ounces);
 };

convertToOunces();

 var scores = [83, 40, 55, 72, 59, 88, 99];

 var passOrFail = function () {
 	for (var i = 0; i < scores.length; i++) {
 		if (scores[i] >= 60) {
 			scores[i] = 'pass';
 		} else {
 			scores[i] = 'fail'
 		}
 	}
 	return scores;
 };


 passOrFail();```


### 6.3.1

```js
var cups = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
var ounces = [];

var convertToOunces = function () {
	for (var i = 0; i < cups.length; i++) {
		ounces.push(cups[i] * 8);
	}
	console.log(ounces);
 };

convertToOunces();

var scores = [83, 40, 55, 72, 59, 88, 99];

 var passOrFail = function () {
   for (var i = 0; i < scores.length; i++) {
 		if (scores[i] >= 60) {
 			scores[i] = 'pass';
 		} else {
 			scores[i] = 'fail'
 		}
 	}
 	return scores;
 };


 passOrFail();````
