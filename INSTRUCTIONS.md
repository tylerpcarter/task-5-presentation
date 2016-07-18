# Creating the text for your presentation

Once you have settled on a topic, create the text of your presentation simliar to the `example.md` file found in this directory. 

You can name it whatever you like. 

Each top level markdown header in the file will become a slide. 
The text in the header will be included in the slide. 
This is only a draft, though, so you can of course change this later. 

The `<aside class="notes">` tags should be used to wrap the long form text of your actual presentation. 
These will show up in the speaker notes interface embedded in reveal.js.

This is also the text you will record. 

Any text outside of the `<aside>` tags will be shown on the screen in your actual presentation slides. 

Again, you can change this later. 

# Convert your presentation

I have taken the liberty of creating a template for you to make translating this into HTML5 a lot easier. 

All you need to do is run Pandoc, as follows, on your markdown source file, once it is finished. 



This will give you the HTML5 you can work with in polishing your presentation. 