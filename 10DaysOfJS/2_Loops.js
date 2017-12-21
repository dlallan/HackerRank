'use strict';

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', _ => {
    inputString = inputString.trim().split('\n').map(string => {
        return string.trim();
    });
    
    main();    
});

function readLine() {
    return inputString[currentLine++];
}

/*
 * Complete the vowelsAndConsonants function.
 * Print your output using 'console.log()'.
 */
function vowelsAndConsonants(s) {
    let vowels = '';
    let consonants = '';
    for (var i=0;i < s.length;++i)
    {
        if (['a','e','i','o','u'].includes(s[i]))
            vowels += s[i]+'\n';
        else
            consonants += s[i]+'\n';
    }
    console.log(vowels+consonants);
}

function main() {
    const s = readLine();
    
    vowelsAndConsonants(s);
}