# Animation
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
