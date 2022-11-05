const fruits = new Map([
    ["apples", 500],
    ["bananas", 300],
    ["oranges", 200]
  ]);
  
  // List all entries
  let text = "";
for (const x of fruits) {
    text += x + "<br>";
  }

  /*
output inside html file :
apples,500
bananas,300
oranges,200
  */