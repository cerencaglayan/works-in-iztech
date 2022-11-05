/*
*You can declare variables in js as:
*   var a = 5;
*   let b = 10;
*   const c = 15;
*/

// this is also valid declaration:
var person = "John Doe", carName = "Volvo", price = 200;

//If you put a number in quotes, the rest of the numbers will be treated as strings, and concatenated:
var no = "4" + 2 +3;
document.write(no);


//Variables defined with let cannot be redeclared as long as they are in different block!
// it cannot be used outside of its block that declared!
let i = 7;
//let i=8; // error!

// in var, all of restrictions for let is permitted.


// Variables defined with const bpth cannot redeclared and reassinged. It also same as let releted to block declaration.
// They are constant references. That means ; example : you can  manipulate arrays' item if you want.
//They must be assinged : const PI; is illegal.
//
const PI = 3.14;