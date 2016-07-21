% An example reveal.js slide presentation 
% John D. Martin III
% 19 July, 2016

# Markdown in, HTML5

```
pandoc -t revealjs --template=template-index.html -s --variable theme="black" --variable transition="slide" --variable revealjs-url="./" YOUR-MARKDOWN-FILENAME.md -o YOUR-HTML-FILENAME.html
```

<aside class="notes">
Every top level markdown header in this file will be translated into a "section" in your HTML5 output. This output will be plain, using only the base reveal.js style. The command above, mutatis mutandis, will let you do the conversion.
</aside>

# Adding audio

```
<section id="my-slide" class="slide level1" data-audio-src="audio/1.0.ogg">
  <h2>
    My slide
  </h2>
</section>
```

<aside class="notes">
To add audio, you have to add the data-audio-src attribute and specify a path to the associated audio file in your HTML file, as shown on the screen. Using this technique, you should only add the audio after you have written your presentation in the form of the file that we converted to make this presentation. That input file uses markdown with embedded "aside" tags with notes as the class. 
</aside>

# Experimenting

```
git add -v .
git commit -a -m "I made a small change"
git push
```

<aside class="notes">
Reveal is very powerful, so try exploring some of its features, but be careful not to make any changes that you can't roll back. In other words, make a change, use git to add, commit, and push. Then test. If you don't like the change, you can always roll it back. If you do this, then you will be able to fix things easily if you break something by reverting your last commit. If you are testing locally, you don't have to push your changes. Just commit them. You will still be able to roll them back using the git revert command.
<\aside>

# Enjoy

<aside class="notes">
Once you get used to using reveal, you might actually enjoy the fact that all you have to do is write. No more messy GUI hiding your text from you. No more buttons and drop-downs and the temptation to use too many effects. You now have a very powerful tool in your hands for creating presentations that can be shown in any web browser, anywhere. If you keep your work in GitHub or somewhere similar, you can also easily share your finished presentations. 
</aside>