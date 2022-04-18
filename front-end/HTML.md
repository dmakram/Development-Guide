##### HTML

Making use of the HTML Tags to make a more best practice structure. allowing a space in it to add classes, styles and attributes if they would like to. Very Similar to what markdown can do with Documents compared to what Microsoft Word would do. Markdown is simple and powerful, very easy to learn. Can be modified to become an HTML file or a PDF to be printed. 

*The ease to do those things with today's modern open-source Markdown applications like [Typora](https://typora.io/), [Atom](https://atom.io/), and [Notion](https://www.notion.so/).*

The **Hyper Text Markup Language** is made up of tags.

HTML Starts with a document type tag `<!DOCTYPE html>`.

The main tag that encapsulates all the the HTML essential parts is the `<html></html>`

Each of the most common tags have an opening and closing tag, this is if the tag contains other tags with in itself, for an example the Heading tags which range from `<h1>` to `<h6>`. 

*When including text in a document here are some of the tags you might use.*

Here is and example of a **h1** tag:

<h1>Heading 1</h1>

`<p>` a p tag or a paragraph tag generally contains basic text descriptions

There are tags that make specific changes to text to describe more of what the text is..

`<strong></strong>`<strong> Strong tags make the text more bold and important.</strong>

`<em></em>` <em>Emphasis tags makes the text Italic.</em> 

`<span></span>`  <span>text that or element of text that generally fit its own unique purpose</span>

*Some tags don't have a closing tag, these are some of the examples.*

`<a href="#">` anchor tags, used as a link or a navigation tag, used to navigate or initiate actions.

`<img src="#">` image tags, used to bring in an image. the source tag -> src="path/to/image.jpg"  is used to embed an image in to the document.

`<br>` the line break tag, you can already see that it started the text on a new line.

Media Tags

`<audio>`  The Audio tag allows you to embed audio files within your page

`<video>` The Video tag allows you to embed video files within your page

There are many more tags that can be handy and easy to use I just wanted to show a few examples of how HTML is used in general and what are some essential tags.

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

The example above is a simple of an HTML document basic structure.

In some cases when HTML is used with in a different language like Javascript, PHP,or Python, the `<html>` tag isn't used or needed. The language interpreter will most likely just interpret it as regular HTML tags.

Here is an example of a bare bones structure, using tags that encapsulate the more general areas of an HTML document.

```html
<!DOCTYPE html>

/* Comment sections don't show in the document. Comments are used to show advanced users or developers information related to the document, etc.
*/

// single line comment, here I used single line comments to label the tags

<html> 
	<head> // The head tag Carries information that tell the browser some important information, like links, languages, meta tags, etc..
		<title>Page Title</title> // This is the Page Title that shows in a browser tab
		  <link rel="stylesheet" href="css/main.css"> // link to a CSS (Cascading Style Sheet)
  		  <link rel="shortcut icon" href="favicon.png"> // a favicon is an image that shows in a Chrome of Firefox tab
	</head>
	<body> // The Body tag is all the things that will be rendered in a page
	<header> // The header tag is usually usually the top part of a page
		<nav> // Nav tags are sections that mainly have some sort of navigation, links to other pages
            
		</nav>
	</header>
		<article> // Article tags are most commonly used once or never in any given page, its mainly used when HTML is used as a Document, Article, or Blog page, etc...
		</article>
        <main> // main is most commonly used for when HTML is used with or for an application.
        </main>
        <script  src="js/app.js" charset="utf-8"></script> // the script tag either contains Javascript or links to a Javascript document
	</body>
</html>
```

