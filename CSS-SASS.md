# CSS

The Styling of the HTML structure created is essential to make the development of the styling of objects and making their presence on the site. It should be organized in an objective and be very similar to the structure in that, it is easy for the programmer to read and comprehend. For this problem the solution can be SASS - scss or sass, it might be almost identical to the way tags are interpolated. In addition to TailWindCss so that the components that you make can be modified later. Almost like a templating Engine.

tailwindcss + scss = Perfection Structure and custom options The Orientation if you even use the python like version of sass with the indentation. It would compliment the placement of DOM (Document Object Model). it makes it more organized.

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

If the Code Gets too much then split the code in to more scss files and import them. Name the extended scss files with an "_" before it. ex.  extended.scss  and import it in the main.scss file.

```scss
@tailwind base;
@tailwind components;
@tailwind utilities;
@tailwind screens;


/* Fonts */

@font-face {
  font-family: 'Riviera';
  src: url("fonts/Riviera.otf");
}
@font-face {
  font-family: 'LEMONMILK-Medium';
  src: url("fonts/LEMONMILK-Medium.otf");
}

@font-face {
  font-family: 'LEMONMILK-Bold';
  src: url("fonts/LEMONMILK-Bold.otf");
}

@font-face {
  font-family: 'Comfortaa-Regular';
  src: url("fonts/Comfortaa-Regular.ttf");
}
@font-face {
  font-family: 'Comfortaa-Light';
  src: url("fonts/Comfortaa-Light.ttf");
}
@font-face {
  font-family: 'Comfortaa';
  src: url("fonts/Comfortaa-VariableFont_wght.ttf");
}


/* @font-face {
  font-family:"#" ;
  src: url("../css/fonts/#");
} */



 html {
   scroll-behavior: smooth;
   font-size: 65.5%;
 }


 /*  Basic HTML tags  TW BASE*/
 @layer base {
   h1 {
     @apply text-9xl font-bold sm:text-5xl font-heading;
   }

   h2 {
     @apply text-2xl font-bold sm:text-4xl font-heading;
   }

   h3 {
     @apply text-xl font-bold sm:text-3xl font-heading;
   }

   h4 {
     @apply text-lg font-bold font-heading;
   }
   p{
     @apply font-body;
   }
   /* body {
     @apply  ;
   } */
  section {
     @apply py-10 ;
   }
   button{
     @apply btn;
   }

 }

 /* CSS TW Components */

 @layer components {

   /* Basic Components */
   .flow-content > * + * {
     margin-top: 1.5em;
   }
   .layout {
     max-width: 68.75rem;  /* // 1100px */
     width: 90%;
     margin-left: auto;
     margin-right: auto;
   }
   .hero{
     @apply text-9xl;
   }
   .hero-section{
     @apply bg-brand-primary;
   }
   .page-title
   {
     @apply uppercase font-heading;
   }
   .page-desc{
     @apply font-body md:text-9xl;
   }

   /* .nav-bar {
 //  @apply  ;
 //  }
 //   .nav-items {
 //    @apply ;
}
   .nav-item{
     @apply font-nav px-8 text-2xl md:text-6xl justify-evenly;
   }

   .btn {
        @apply py-2 px-4 border border-4 text-brand-primary rounded-lg bg-brand-primary;
   }
   .btn-sm {
        @apply py-4 px-6 border border-4 text-brand-primary rounded-lg bg-brand-primary;
   }

 /* Sections */
   .section-title
   {
     @apply font-heading flow-content;
   }
   .section-desc{
     @apply font-body ;
   }

```

Tailwind Configuration file

this configuration file will contain all the important media, color, dimensions, fonts ,backgrounds, and Images

```js
module.exports = {
  content: ['./**/*.html'],
  darkMode: 'media', // or 'class'
  theme: {
    extend: {
      screens:{
      'xs': '360px',
       //extra small screen
      'sm': '640px',
      // small screen
      'md': '768px',
      // => @media (min-width: 768px) { ... }

      'lg': '1024px',
      // => @media (min-width: 1024px) { ... }

      'xl': '1280px',
      // => @media (min-width: 1280px) { ... }

      '2xl': '1536px',
      },
      // => @media (min-width: 1536px) { ... }
      // backgroundColor: ['active'],
      // backgroundImage: theme => ({
      //   'footer-texture': "url('#')",
      // }),
      spacing: {
        sm: '8px',
        md: '16px',
        lg: '24px',
        xl: '48px',
      },
      colors: {
        brand: {
          primary: '#ff0000',
          secondary: '#474878',
          dark: '#2E2E2E',
          secondary: '#474878',
          light: '#008080',
          info: 'orange',
          success: '#28a745',
          warning: '#ffc107',
          danger: '#dc3545',
          bg: '#e0e0e0',
        },
      },
      fontFamily: {
        brand: ['Riviera', 'Segoe UI', 'Roboto', 'Helvetica Neue', 'Arial', 'Noto Sans', 'sans-serif', 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'],
        nav: ['Comfortaa-Light', 'Segoe UI', 'Roboto', 'Helvetica Neue', 'Arial', 'Noto Sans', 'sans-serif', 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'],
        heading: ['LEMONMILK-Medium', 'Segoe UI', 'Roboto', 'Helvetica Neue', 'Arial', 'Noto Sans', 'sans-serif', 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'],
        body: ['Comfortaa', 'Segoe UI', 'Roboto', 'Helvetica Neue', 'Arial', 'Noto Sans', 'sans-serif', 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'],
        article: ['Comfortaa', 'Segoe UI', 'Roboto', 'Helvetica Neue', 'Arial', 'Noto Sans', 'sans-serif', 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'],
        content: ['Comfortaa', 'Segoe UI', 'Roboto', 'Helvetica Neue', 'Arial', 'Noto Sans', 'sans-serif', 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'],
      },
      textColor: theme => theme('colors'),
      backgroundColor: theme => theme('colors'),
      fill: theme => theme('colors'),
      borderColor: theme => theme('colors'),
      placeholderColor: theme => theme('colors'),
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
```
