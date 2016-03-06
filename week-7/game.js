 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Your pet has gone missing. It is your job to move up, down, right, and left until you find your pet.
// Overall mission: Find lost pet.
// Goals: Move in different directions until find pet.
// Characters: Player and pet.
// Objects: The objects of the player and pet are their x and y location.
// Functions: Create a function to move the player on the x and y grid to update the coordinates. Create a function to check if the player has the same coordinates as the pet.

// Pseudocode
//  1. define a variable called player with an x and y location.
//  2. define a variable called pet with an x and y location.
//  3. write a function that will allow the player to move up, down, right, and left. Based on the direction called, the x and y coordinates will update. Right/left affect the x-coordinates and up/down affect the y coordinates.
//  4. write a function to check and see if the player and pet are in the same location.  If the x and y coordinates of both are the same, the pet has been found. If the coordinates are not the same, tell the player to keep trying.
//  5. Continue playing the game until the player has found their pet.

// Initial Code
var player = {posX: 0, posY: 0};
var pet = {posX: 1, posY: 2};

function move(direction) {
  if (direction === "up") {
    player.posY += 1;
  }
  else if (direction === "down") {
    player.posY -= 1;
  }
  else if (direction === "right") {
    player.posX += 1;
  }
  else if (direction === "left") {
    player.posX -= 1;
  }
}

function check() {
  if (player.posX === pet.posX && player.posY === pet.posY) {
    console.log("Congratulations! You found your pet!");
  }
  else {
    console.log("No luck! Keep trying!");
  }
}

console.log("Welcome! Your pet, Ruby, has gone missing and it is your job to find her! Move up, down, left, and right until you are both reunited!");
move("up");
check();
move("up");
check();
move("right");
check();
console.log(player);
console.log(pet);

// Refactored Code


function Player(x, y) {
  this.posX = x;
  this.posY = y;

  this.move = function(direction) {
    switch (direction) {
      case "up":
        this.posY += 1;
        break;
      case "down":
        this.posY -= 1;
        break;
      case "right":
        this.posX += 1;
        break;
      case "left":
        this.posX -= 1;
    }
  }

  this.check = function(pet) {
    if (this.posX === pet.posX && this.posY === pet.posY) {
      console.log("Congratulations! You found your pet!");
    }
    else {
      console.log("No luck! Keep trying!");
    }
  }
}

var player = new Player(0, 0);
var pet = new Player(1, 2);

console.log("Welcome! Your pet, Ruby, has gone missing and it is your job to find her! Move up, down, left, and right until you are both reunited!");
player.move("right");
player.check(pet);
player.move("up");
player.check(pet);
player.move("up");
player.check(pet);
console.log(player);
console.log(pet);


// Reflection
// What was the most difficult part of this challenge?  The most difficult part of this challenge was the JavaScript syntax. I did not have too much difficulty mapping out my code, but had to fix quite a few syntax errors since JS is very specific.
//
// What did you learn about creating objects and functions that interact with one another? I learned that is is important to refer to objects correctly and use the logical operators to compare objects within a function. In my refactoring, I learned that you may need to use the object as an argument when it is not the "this" instance of the variable.
//
//Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?  I did not use any new built-in methods, but I did apply a switch case to make my code more concise.  The switch case allows me to create different cases of when the specified item matches the expression.  I also created a constructor in my refactored code to make it easier to change the location of the objects or create multiple objects without manipulating the base code.
//
//How can you access and manipulate properties of objects? To access a property of the object, you need to specify what you would like to access. In my game, the properties of my two objects were a key/value pair of the x and y location. To access the x location I had to call the variable followed by the key (player.posX).  I also added and subtracted to the object within the if statement, which updated the value of a particular key.

