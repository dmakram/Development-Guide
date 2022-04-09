# DevelopmentGuide

A collective of all the usable Documentation and little tools that can be used in web-development. Best Practices all in one place.

To Simplify we take the basic foundational concepts, arrange them in best practice and simplest form. Dissecting the languages to form almost like Lego pieces. These Lego pieces make the conceptual foundation of the idea that the programmer wants to achieve. 

Each Project has to have a Mood Board where the crucial media and Documentation from the client is planned out. Images for instpiration. And Brainstormed Ideas.

A way to show what can be, and how thins might be implemented, both the UI and UX

## Object Oriented Programming

I feel when learning programming Object Oriented Programming is very relatable when building the architectural structure in system.

For an example. If you are making a library application to store books the basic structure would look like this.

```
Library > Categories > Genre > Books > Book
// the logic usually comes after the Objects, Classes, Methods and Attributes of a Structure are Set.
// Functions may come after or it could be part of the objects programming.

// When Creating an Interactions Layer there access control management challenges to deal with since users have a learning curve to go through to understand the objectives they can achieve through each part function.

Member or Customer
Librarian or Admin or Staff

```



After Configuring the structure and theme of the website comes that design and animation. 

SVG designs have been a great way to integrate with the CSS and Javascript. 



```svg
<svg width="120" height="100" viewBox"0 0 120 100" fill="none">
<g id="MainGroupNamw"> // group id
<g id "lightelement">
    <path id="light1" opacity="0.6" d=""/> // path element   
    </g>
</g>
</svg>
```

```css
<style>
// using the id to access the svg element
#light1{ 
    tansition: all 1s ease forward;
    transform: translateX(-100);
}
//being more specific
svg:hover #light1 { 
    transform: translateX(40%);
}
</style>

```

```css
//selecting direct group by id
#element g {
    
}
//using keyframes


@keyframes dropIn {
    
// there are two types of animations using keyframes from and to
    from{
        
    }
    to{
        
    }
//and using percentages
    0%{
        
    }
    75%{
        
    }
    100%{
        
    }
// there are more advanced animations using curves testing can happen within the chrome or firefox browser.

}
```



##### JAVASCRIPT

```js
const svg = document.getElementById('element-id');
svg onclick = (e) =>{  /// event onclick
    const colors = ['red','blue','green','orange','pink','purple']
    const random = () => colors[Math.floor(Math.random()* colors.length)]
    document.documentElement.style.cssText = `
    --dark-color: ${rand()};
    --light-color: ${rand()};
    
    `
}

```

Is essential for the interaction with the user, but unlike HTML and CSS, JAVASCRIPT is a programming language, so the user needs to understand the basic or foundational elements, so to help in this case we allow the integration with all the important web technologies, and make it available when needed like modularly building the application in that the logic is seperate from the structure and the funcitons when in development.


##### If the Factory has a Custom Project Section.

Taking the All the basic practices to another level adding the git system in to the workflow each developer will be able to track their progress daily. Motivates the Developers to do more and see more work being done tracked. Allowing the flexiblity of working as a team to quickly build an applcation.

Adding the Design to the work is essential. Designers have a different way of looking at things, the impression of the visible and the reaction/depth the concept message is to the user. Allowing the user to understand and feel certain ways while using our products, A sense of connection, that most products lack around the world.

##### UI & UX Design

Two Term that mean different aspects of Products and Presentation. These terms are the User Interface and User Experience.

The **User Experience** as a whole is the result of the user or consumer interacting with the product through time. Are the users satisfied with the outcome of the application achieves? Does the User grasp how to use the application with ease? Can it be Enjoyable?

The **User Interface** approaches the product in a different manner it tries to make a user-friendly design, a design that is easy to learn from the first interaction. The reason why many Applications have a similar design or framework system, is to recreate something that already works and is remembers from other user interactions.

Examples can be how to ride a bike, you can see the peddles, and you see the saddle, rubbers on the bar like handles of a knife or a maintenance tool. If you see someone riding it is easier for you to ride instantly. it is possible you ride different bikes but you wouldn't have such a long learning curve because the basics of riding are very similar to the first experience. This can also entail quality and material.



```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Basic Web Structure</title>
</head>
<body>
  <header>
    <div class="">

    </div>
    <nav>
      <ul>
        <li class="nav-item">Home</li>
        <li class="nav-item">How It Works</li>
        <li class="nav-item">About</li>
        <li class="nav-item">Contacts</li>
      </ul>
    </nav>
  </header>
  <main>
  <h1>Main Title</h1>
  <section class="hero" id="hero">
    <h1 class="section-title">Hero Section Title</h1>
    <p class="section-disc">Hero Description Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
  </section>
  <article class="">
    <h1 class="arictle-title">Article Title</h1>
    <p>arictle Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
  </article>
    </main>
    <footer>
      <h1 class="footer-title">Footer Title</h1>
      <h2 class="">Some Links</h2>
      <nav>
        <!-- the footer-nav class will contain javascirpt to populate the site map navigation -->
        <ul class="footer-nav">
          <li class="nav-item">Home</li>
          <li class="nav-item">How It Works</li>
          <li class="nav-item">About</li>
          <li class="nav-item">Contacts</li>
        </ul>
      </nav>
    </footer>
</body>
</html>
```

tailwindcss + scss = Perfection Structure and custom options The Orientation if you even use the python like version of sass with the indentation. It would compliment the placement of DOM. it makes it more organized.

```scss
body{
    header{
        div{
            
        }
    	nav {
            ul{
            	.nav-item{
                
            	}
            }
    	}
   }
    // Using main here to direct the robots to focus on the content with in the main.
    main {
        section{
            
        }
        .hero{
            //This hero text must be bigger than most
            h1{
                
            } 
        }
        //aritcle section is what like a main content for the page that can later be printed. Robots will make sure to read this
        aritcle{ 
            
        }
        .cta{
            
        }
        .subject-section {
            
        }
    }
    
}
```

If the Code Gets too much then split the code in to more scss files and import them.

Name the extended scss files with an "_" before it. ex.  extended.scss

```

```

