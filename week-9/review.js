// Bingo Challenge in JavaScript

//Pseudocode
/*
  1. Create variable called guess_letter that is an object which includes "BINGO" and select one random letter.

  2. Create variable called guess_num that randomly selects a number between 1 and 100.

  3. Iterate through the bingo_board to see if the letter guessed equals the index called. [0] = "B", [1] = "I", [2] = "N", [3] = "G", [4] = "O". If the guessed letter matches the index, checked to see if the value matches the guessed number.
    FOR (var sub_array in bingo_board) {
      IF guess_letter = "B"{
        IF bingo_board[sub_array][0] === guess_num{
            bingo_board[sub_array][0] = "X";
        }
      }
    }
*/

var bingo_board = [[47, 44, 71, 8, 88],
               [22, 69, 75, 65, 73],
               [83, 85, 97, 89, 57],
               [25, 31, 96, 68, 51],
               [75, 70, 54, 80, 83]];

//Initial Solution

var letter_array = ["B", "I", "N", "G", "O"];
var guess_letter = letter_array[Math.floor(Math.random() * letter_array.length)];
//var guess_letter = "O";
var guess_num = Math.floor((Math.random() * 100) + 1);
//var guess_num = 83;

var check_board = function(){
  for (var sub_array in bingo_board) {
    if (guess_letter === "B"){
      if (bingo_board[sub_array][0] === guess_num){
          bingo_board[sub_array][0] = "X";
        }
      }
    else if (guess_letter === "I"){
      if (bingo_board[sub_array][1] === guess_num) {
        bingo_board[sub_array][1] = "X";
      }
    }
    else if (guess_letter === "N"){
      if (bingo_board[sub_array][2] === guess_num) {
        bingo_board[sub_array][2] = "X";
      }
    }
    else if (guess_letter === "G"){
      if (bingo_board[sub_array][3] === guess_num) {
        bingo_board[sub_array][3] = "X";
      }
    }
    else if (guess_letter === "O"){
      if (bingo_board[sub_array][4] === guess_num) {
        bingo_board[sub_array][4] = "X";
      }
    }
  }
}

console.log(guess_letter);
console.log(guess_num);
check_board();
console.log(bingo_board);

//Refactor - case option for if/else

var letter_array = ["B", "I", "N", "G", "O"];
var guess_letter = letter_array[Math.floor(Math.random() * letter_array.length)];
//var guess_letter = "O";
var guess_num = Math.floor((Math.random() * 100) + 1);
//var guess_num = 83;

var check_board = function(){
  for (var sub_array in bingo_board) {
    switch (guess_letter) {
      case "B":
        if (bingo_board[sub_array][0] === guess_num){
            bingo_board[sub_array][0] = "X";
        }
        break;
      case "I":
        if (bingo_board[sub_array][1] === guess_num) {
          bingo_board[sub_array][1] = "X";
        }
        break;
      case "N":
        if (bingo_board[sub_array][2] === guess_num) {
          bingo_board[sub_array][2] = "X";
        }
        break;
      case "G":
        if (bingo_board[sub_array][3] === guess_num) {
          bingo_board[sub_array][3] = "X";
        }
        break;
      case "O":
        if (bingo_board[sub_array][4] === guess_num) {
          bingo_board[sub_array][4] = "X";
        }
    }
  }
}

console.log(guess_letter);
console.log(guess_num);
check_board();
console.log(bingo_board);

// Reflection

// What concepts did you solidify in working on this challenge?
// On this challenge, I solidified iterating through arrays and updating values with an "X" when appropriate.

// What was the most difficult part of this challenge?
// The most difficult part of this challenge was adjusting the JavaScript syntax so that the program would run properly.

// Did you solve the problem in a new way this time?
// No, I solved the problem the same way since it was concise and understandable.

// Was your pseudocode different from the Ruby version? What was the same and what was different?
// My pseudocode stayed pretty much the same, as conceptually everything remained the same, it was more so adjusting the syntax.
