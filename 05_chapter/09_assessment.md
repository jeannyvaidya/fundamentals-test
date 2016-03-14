# Unit 5 Homework: Organizing Code and Creating Dynamic HTML

Your code is slowly but surely starting to get more robust. To better organize the code you've already written as well as prepare for the code you will write, we will now take the time to structure the program using functions. Further, using what you've learned about iterating with loops, you will also dynamically create your cards into HTML.

JavaScript comes with built-in functions we can call upon JavaScript objects with dot notation. These functions are no different than the functions we just covered, but they are more commonly known as _methods_.

For example, let's look at `document.createElement('div')` which creates an HTML `div` element (a `div` will come to visually represent a card in the browser).

- `document` is a readily available JS object
- `createElement` is the function/method it comes with
  - This method performs the functionality of creating a new HTML element.
  - Just like with the functions we've learned about, we can pass in arguments for them to use.

In this case, we passed `createElement` and argument of `'div'` so a `div` element is created. If you'd like, you could go ahead and run that line of code, `document.createElement('div')`, in your browser's console to get a further understanding.

Besides `createElement`, the `document` object comes with various other methods that help with the creation and manipulation of HTML and CSS. For example, there is a method for adding a class to an element, [`className`](https://developer.mozilla.org/en-US/docs/Web/API/Element/className), as well as one for adding innerHTML, [`innerHTML`](https://developer.mozilla.org/en-US/docs/Web/API/Element/innerHTML). On top of those methods which allow you to construct an element, there's also the method [`appendChild`](https://developer.mozilla.org/en-US/docs/Web/API/Node/appendChild) which aids in actually attaching the element to an element in your web page.

In order to complete this assignment you will need to utilize these methods.

>**Note:** In order to append your card elements, you're going to need something to append to, in this case a `div` with the class `board`. In order to find an element to you want to append to, use JavaScript's `document` object to run the method [`getElementsByClassName`](http://www.w3schools.com/jsref/met_document_getelementsbyclassname.asp).

## Exercise

#### Requirements

###### Create the HTML for the cards:

- Find an element with the class name `board` and set it to a variable
- Assuming your memory card game consists of four cards, create a `for loop` that makes an HTML element for each card
  - each HTML element should be a `div`
  - each element should have a class `card` (this will help when you add CSS)
- Append each newly created card to the `div` that has the class `board`

###### Create functions to organize your code:

- create a function called `createBoard` which creates the HTML for your cards and appends the resulting HTML to your `div` that has the class board
- execute/fire your `createBoard` function so it runs

#### Below are the steps to complete the assignment.

1) Find the board and set it to a variable. See below.

```js
var board = document.getElementsByClassName('board')[0];
```

2) Create a `for loop` that will iterate four times. No hints here!


3) Create the required HTML for each card on each iteration and append to the board and place inside the `for loop`. See below for hint.

```js

  // create a div element which will be used as a card
  var cardElement = document.createElement('div');

  // add a class to the card element which will help link styling
  cardElement.className = 'card';

  // append the card to the board
  board.appendChild(cardElement);

}
```

4) Create `createBoard` function.

5) Add your board creation logic to the function from Step 1, 2 & 3.

6) Execute `createBoard`

#### Deliverable

Once you're happy with your work, save your code and make a commit to your project's repository.

---
[Next up: Chapter 6](../05_chapter/intro.md)
