// app.js

// Function to add two numbers
function add(a, b) {
    return a + b;
  }
  
  // Function to calculate the factorial of a number
  function factorial(n) {
    if (n < 0) return -1; // Incorrect handling of negative numbers
    if (n === 0) return 1;
    return n * factorial(n - 1);
  }
  
  // Unused variable (SonarQube should flag this)
  const unusedVar = 42;
  
  // Console log to show the output
  console.log("Addition of 2 and 3:", add(2, 3));
  console.log("Factorial of 5:", factorial(5));
  