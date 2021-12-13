var readline = require('readline');

var rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
    terminal: false
});

console.log(`3, 2, 1.\n`);
rl.on('line', function(line){
    console.log(line + `<break time="4s"/>`);
});
