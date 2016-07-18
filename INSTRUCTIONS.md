# Instructions for Assignment 6

# Creating the text for your presentation

Once you have settled on a topic, create the text of your presentation simliar to the `example.md` file found in this directory. 

You can name it whatever you like. 

## Metadata

You have to add the preamble at the top as follows (with your info substituted accordingly):

```
% TITLE
% NAME
% DATE
```

This will generate your first slide, with the title, your name, and the date.

## Individual slides from text

Each top level markdown header in the file will become a slide. 
The text in the header will be included in the slide. 
This is only a draft, though, so you can of course change this later. 

## Speaker notes

The `<aside class="notes">` tags should be used to wrap the long form text of your actual presentation. 
These will show up in the speaker notes interface embedded in reveal.js.

This is also the text you will record. 

Any text outside of the `<aside>` tags will be shown on the screen in your actual presentation slides. 

Again, you can change this later. 

# Convert your presentation

I have taken the liberty of creating a template for you to make translating this into HTML5 a lot easier. 

All you need to do is run Pandoc, as follows, on your markdown source file, once it is finished. 

`pandoc -t revealjs --template=template-index.html -s --variable theme="black" --variable transition="slide" --variable revealjs-url="./" YOUR-MARKDOWN-FILENAME.md -o index.html`

This will give you the HTML5 you can work with in polishing your presentation. 

# Add audio

Once you have the HTML5 file for your presentation, you will need to add audio. 

We will go over in class how to create, edit, and then upload audio for this purpose. 

To get reveal.js to play that audio as a part of your slideshow, you simply need to add the data-audio-src attribute to the `<section>` tag that was created in the conversion of your source file, like this:

```
<section id="my-slide" class="slide level1" data-audio-src="audio/1.0.ogg">
  <h2>
    My slide
  </h2>
</section>
```

That attribute specifies the relative path to the audio files that correspond to each of your slides. 
You can also add audio to fragments. 
We will look at this in class. 

# Experiment with style. 

You can change a whole bunch of things about the style of individual slides. 
You can add background images and video if you want. 
It is possible to change the color and many other attributes as well. 

You should experiment with all of this, but remember to use git to track your changes as you work. 
Make a small change and then add and commit it using git, just like we have been doing. 

```
git add -v .
git commit -a -m "I made a small change"
git push
```

Then test. If you don't like the change, you can always roll it back. 

If you do this, then you will be able to fix things easily if you break something by reverting your last commit. If you are testing locally, you don't have to push your changes. Just commit them. You will still be able to roll them back using the git revert command.

# When all else fails

In the end, if you really get stuck, you can always start over again and convert from markdown. 
This is the nuclear option, which you want to avoid if possible, but if you have made changes that you can't remember and can't get back to a working presentation, it's always avaialable. 