// Refactored Solution

function Calculate(array) {
  this.array = array;

  this.sum = function() {
    var sum = 0;
    for (var i in this.array) {
        sum += this.array[i];
    }
    return sum;
  }

  this.mean = function() {
    var count = this.array.length;
    var result = this.sum()/count;
    console.log(this.sum());
    console.log(result);
  }

  this.median = function() {
    var result;
    var count = this.array.length;
    this.array.sort();
    if (count % 2 == 1) {
        var middleIndex = Math.floor(count/2);
        result = this.array[middleIndex];
    } else {
        var firstMiddleIndex = (count/2)-1;
        var secondMiddleIndex = count/2;
        result = (this.array[firstMiddleIndex]+this.array[secondMiddleIndex])/2;
    }
    console.log(result);
  }
}

var numArray = new Calculate([1, 2, 3, 4]);
console.log(numArray);
numArray.sum();
numArray.mean();
numArray.median();

// User Story
/* As a user, I want to create a list of numbers. With this list of numbers, I would like to know the sum (would add the numbers together) mean (would find the average of the numbers), and median (would find the number that is halfway between the list once the numbers are sorted from smallest to largest).
*/