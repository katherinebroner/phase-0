// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with Dan Shapiro.

// Pseudocode
/*
Input: integer
Output: string of numbers with commas

1. Assign integer to a variable
2. Create a function that takes variable containing integer as an argument
3. Check to see if integer > 3 digits; if so, execute code block
4. Convert integer to string
5. Split each character into different values in an array
6. Reverse array
7. Create a counter starting at index 2
  - Place comma at index 2
8. Place comma every three indexes until no longer possible
9. Reverse array again
10. Join array into one string.
11. Print string to console.


*/
// Initial Solution

var integer = 10000000000000


var separateComma = function(num) {
  var string = num.toString();
  var splitString = string.split("");
  var reverseString = splitString.reverse();

  var startIndex = 3
  while (startIndex < reverseString.length) {
    reverseString[startIndex] += ",";
    startIndex += 3
  }
  reverseString.reverse();
  var final = reverseString.join('');
  console.log(final);
}

separateComma(integer);



// Refactored Solution

var separateComma = function(num) {
  var reverseString = num.toString().split("").reverse();

  for (var i = 3; i < reverseString.length; i += 3) {
    reverseString[i] += ","
  }
  reverseString.reverse();
  var final = reverseString.join('');
  console.log(final);
}

separateComma(integer);
// Your Own Tests (OPTIONAL)




// Reflection/* 7.5 Separate Comma
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?  We kept our approach fairly similar to how we completed the challenge in the earlier weeks.  We wanted to make sure our psuedocode was detailed so that we could easily understand how to write our JavaScript code.  Because we had clear pseudocode, the only adjustments we needed to make was to the code itself.

What did you learn about iterating over arrays in JavaScript?  For iterating over arrays in JavaScript, I learned that this can be completed in a few different ways.  In our initial solution, we used a while loop to iterate through the array and add commas at the necessary indexes.  In our refactored solution, we iterated through the array using a for loop, which was more concise, but allowed us to perform the same task.

What was different about solving this problem in JavaScript?  The main difference about solving this problem was mainly tied to the specific JavaScript syntax.  Initially we were having difficulty printing items to the console and implementing the methods properly, but after some research we were able to figure it out.

What built-in methods did you find to incorporate in your refactored solution?  The built-in methods we used were toString, split, reverse, and join.  These methods allowed us to split the number into individual elements, reverse it to perform our function, and then reverse it back joined together as one number.  It was helpful to see that you can combine multiple methods on one line.
*/