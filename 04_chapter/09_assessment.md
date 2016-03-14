# Unit 4 Homework: Game Logic

In Unit 4 we covered some game-changing concepts (pun intended). For example, can you guess what type of feature we can now begin to implement in our memory card game? If you guessed game logic, you're right! For this section's homework, you will implement your knowledge of conditionals to help with the task of creating your game logic.

## Exercise

#### Requirements

Based on whether or not your user discovers a match, notify them with a winning or losing message in a popup message using `alert`.
**Hint:** What's an `alert`? Check out the documentation <a href="https://developer.mozilla.org/en-US/docs/Web/API/Window/alert" target="_blank">here</a>

>**Note:** In some of our other exercises we have used `console.log` to give feedback from our code. However, as we start to have a more "user facing" mindset, we begin to code in a way that makes more sense for the user. For our game, this means notifying about a win or a loss with a popup rather than in the console where a user will most likely never look.

##### Below are the steps to complete the assignment.

1) Create an `if else` statement checking for equality between two of your cards (you choose which ones).

```js
// `if` statement should consist of a boolean checking for equality between your created variables
if (cardTwo === cardsThree) {

} else {

}
```

2) If values are equal, execute an `alert` with the message, "You found a match!". If values are not equal, execute an `alert` with the message, "Sorry, try again.".

```js
// if the conditional is met, run the expression: alert("You found a match!")
if (cardTwo === cardsThree) {

  alert('You found a match!');

// else, run the expression: alert("Sorry, try again.")
} else {

  alert("Sorry, try again.");

}
```

When the `alert`s are working properly, you should see:

![](https://s3.amazonaws.com/f.cl.ly/items/1S1E0E3Q3m1K1G2L3C1A/Image%202016-03-06%20at%208.24.46%20AM.png?v=6094ee76)

#### Deliverable

You'll want to keep track of all your hard work, so don't forget to ACP. **Add**, **Commit** and **Push** that code to GitHub!

---
[Next up: Chapter 5](../05_chapter/intro.md)
