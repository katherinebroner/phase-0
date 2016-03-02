/ Separate Numbers with Commas in JavaScript **Pairing Challenge**


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