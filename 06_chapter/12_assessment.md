# Unit 6 Homework: Less Code and Better Logic with Arrays

We're now in the home stretch of creating our memory game! So far we have simulated cards in our game by creating variables that represented the value of the cards and looping through a fixed number we assumed to represent the number of cards. However, with our new found knowledge of arrays, we can now better simulate the cards in our game in a way that will be more versatile and require less lines of code! So, let's go ahead and edit some of our code utilizing arrays as well as write some fresh new code to create some dynamic game logic!

## Exercise

#### Requirements

Replace all your card variables `Array` types. Once that is complete, organize all your code into functions. Then create two more functions, one which will check if two cars are in play, and the other should check if two cards are a match.

##### Below are the steps to complete the assignment.

1) Declare a variable, `cards`, whose value is an `Array` that consists of four `String` elements: `queen`, `queen`, `king`, `king`.


2) Declare a variable, `cardsInPlay`, whose value is an empty array.


3) Each element should have innerHTML which equals the card value (i.e. "queen"). See example below.

```js
// instead of looping through a fixed number
// loop through the length of the cards
for (var i=0; i<cards.length; i++) {

  ...

  // this will set the card's innerHTML to be the element of the array
  // i.e. "king"
  cardElement.innerHTML = cards[i];

  ...

}
```

4) Add a click event listener to each card element that runs a function, `isTwoCards`. See below.

```js
for (var i=0; i<cards.length; i++) {

  ...

  // when a card is clicked the function isTwoCards will be executed
    cardElement.addEventListener('click', isTwoCards)

  ...

}

```

5) Create a function called `isMatch` to test if two cards in play are a match. **Hint:** We can then configure our previous game logic code to access the cards!


6) Create a function called `isTwoCards` to check if two cards are in play.

```js
//checks to see if there are cards in play
function isTwoCards() {

  // add card to array of cards in play
  // 'this' hasn't been covered in this prework, but
  // for now, just know it gives you access to the card the user clicked on
  cardsInPlay.push(this.innerHTML)

  // if you have two cards in play check for a match
  if (cardsInPlay.length === 2) {

    // pass the cardsInPlay as an argument to isMatch function
    isMatch(cardsInPlay);

    // clear cards in play array for next try
    cardsInPlay = [];

  }

}
```

#### Deliverable

When finished, don't forget to **add**, **commit** and **push** your code to your GitHub repository!
