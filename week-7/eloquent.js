// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var number = 5;
var doubleNumber = number * 2;
console.log(doubleNumber);

//var favFood = prompt("What is your favorite food?");
//alert ("Hey! That's my favorite too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var triangle = ""
for (var num = 0; num < 7; num ++)
  console.log(triangle += "#");


// Functions

// Complete the `minimum` exercise.

function min(num1, num2) {
  console.log(Math.min(num1, num2));
}

min(10, 5)

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {};
me["name"] = "Katherine";
me["age"] = 23;
me["favoriteFoods"] = ["cheese", "chocolate", "berries"];
me["quirk"] = "I love adult coloring books!";

console.log(me);