# JavaScript
A great language to learn now-a-days, it is by no means a beginners language, but if you can make it here I feel you can make it through far more higher languages.

This is just an overview, as JavaScript is used in almost all webpages.

## What is JavaScript?
JavaScript is a high-level, interpreted, prototype-based, multi-paradigm, and interpreted scripting language. It is lightweight and most commonly used as a part of HTML.

## What is JavaScript used for?
JavaScript is used in almost all webpages. It is used to make webpages interactive.

## How to use JavaScript?
There are more than one ways to use JavaScript.
### internal
We can use JavaScript in HTML pages. When it is very simple, and sometimes use variables to make content visible. Make interactions with the user.

```HTML
<head>
    <script src="./name.js"></script> <!-- external JavaScript file can imported here -->
</head>
<body>
    <h1 id="name">JavaScript{ name }</h1> <!-- Using the Variables in an HTML Document -->
</body>

<script>
<!-- JavaScript code goes here -->
<!-- this is a JavaScript block of code-->
</script>
```

### external
Importing external JavaScript files is very common.
and is usually used in other JavaScript files to organize the code.

```JavaScript
import { name } from './name.js';

```

## JavaScript Examples

Variables can be used to store data in JavaScript.
There are many types of variables in JavaScript.

```JavaScript
// This is an example of a variable, it can be used to store data in variables. The simplest for I guess is ```var``` but is used rarely.
let name = "John";
let age = 30;
let isMarried = false;
let year = new Date().getFullYear();
// Constants things can't be changed.
const pi = 3.14;
const country = "Canada";

cosnt city = "Vancouver";
// This is an example of a variable, it can be used to store data in objects. 
let person = {
    name: "John",
    age: 30,
    isMarried: false,
    year: new Date().getFullYear(),
    pi: 3.14,
    country: "Canada",
    city: "Vancouver"
};

// This is an example of an array of objects.
let people = [
   id: 1,{
        name: "John",
        age: 30,
        isMarried: false,
        year: new Date().getFullYear(),
        pi: 3.14,
        country: "Canada",
        city: "Vancouver"
    },
    id: 2, {
        name: "Jane",
        age: 32,
        isMarried: true,
        year: new Date().getFullYear(),
        pi: 3.14,
        country: "Canada",
        city: "Vancouver"
    },
    id: 3, {
        name: "Jim",
        age: 28,
        isMarried: false,
        year: new Date().getFullYear(),
        pi: 3.14,
        country: "Canada",
        city: "Vancouver"
    }
]



```
