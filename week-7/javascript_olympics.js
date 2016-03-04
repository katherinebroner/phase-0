 // JavaScript Olympics

// I paired with Jason Allen on this challenge.

// This challenge took me [2] hours.


// Warm Up

// Bulk Up

// INPUT: An Array of `athlete name` and `event`
// OUTPUT: A string with what event the athlete won
// STEPS:
//  1. Define a variable hash containing Athlete names and their corresponding event
//  2. Define a function `win` that receives a hash as an argument
//  3. Create a for loop that iterates over the hash FOR each key `name` in hash, print to the console a string that specifies which event the athlete won as a readable string
//  4. Call the function with `athletes` as a parameter

var athletes = {}
athletes["Kat"]= "Hammer Toss";
athletes["Jason"] = "50m Dash";

function win(hash) {
  for (var name in hash) {
    if (athletes.hasOwnProperty(name)) {
      console.log(name + " has won the event " + hash[name] + "!");
      }
  }
}

win(athletes);


// Jumble your words
// INPUT: accept a variable that represents a string
// OUTPUT: the string reversed
// 1. Define a variable representing a string
// 2. Define a function 'reverse' that takes a string as an argument
// 3. Reverse the string and print to the console

var test = "Katherine is awesome!"

function reverseString(string) {
  var reverseOutput = string.split("").reverse();
  console.log(reverseOutput.join(""));
}

reverseString(test);


// 2,4,6,8
// INPUT: An array of numbers
// OUTPUT: An array of even numbers from the input array
// STEPS:
//   1. Define a variable representing an array of numbers
//   2. Define a function 'even' that receives an array as an argument
//   3. Define an output array as a variable
//   4. Iterate through the input array using a while loop
//   5. IF an array entry is even, pop it from the input array and push it to the output array, ELSE pop it from the input array.
//   6. print the output array to console

var inputArray= [1,2,3,4,5,6,7,8];

function even(input) {
  var outputArray = [];
  var shiftedNum = "";

  while (input.length > 0) {
    shiftedNum = input.shift();
    if (shiftedNum % 2 == 0) {
      outputArray.push(shiftedNum);
    }
  }
  console.log(outputArray.join());
}

even(inputArray);


// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;

}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");
console.log(michaelPhelps.constructor === Athlete);
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote);


// Reflection
//  What JavaScript knowledge did you solidify in this challenge?  JavaScript knowledge solidified in this challenge was how to create a new object and add items to that object. I also learned how to iterate through an object and perform a desired task using a for or if loop.  Knowledge of the constructor function was established, which was fairly easy to understand since it is similar to Ruby classes.
//
//  What are constructor functions?  A constructor function allows serves as a template for creating objects.  Within the template, you specify properties and methods, which are used within the constructor function.  This is beneficial when your input will be changing and you want to use the same output template.
//
//  How are constructors different from Ruby classes (in your research)?  Constructors are different from Ruby classes in that you do not have to define an attribute reader within the function.  In addition, the task to write a sentence the console is called outside of the function rather than within the function, which you could do in a Ruby class.  Constructors are also different from Ruby classes in their syntax - JavaScript requires more detailed syntax (semi-colons), where ruby is more intuitive.
